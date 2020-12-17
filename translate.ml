(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* module de traduction *)


open Names

type name = string

type b_record = name list
type constructor = name * Ast.ident_ren

type env = { 
  record_decls:b_record list; 
  variables: (Ast.ident_ren * Target.vartype) list;
  constructors: constructor list;
  all_mchs_ren: Ast.ident list; (* listes des renommages du projet *)
}

let make_env ?(intial_env=[]) () = 
  { record_decls=[]; (* liste de noms de champs de chaque record *)
    variables=intial_env;
    constructors=[];
    all_mchs_ren=[]}

let env_extends ~(env:env) ~(vartype:Target.vartype) 
    ~(idents:Ast.ident_ren list) : env = 
  let variables=(List.mapi (fun i x -> (x,vartype)) idents)@env.variables in
  {env with variables}

let env_add_record_declaration ~(env:env) ~(field_names:name list) : env = 
  let xs = List.sort compare field_names in
  if List.mem xs env.record_decls
  (* les xs' dans env.record_decls sont déjà triés par construction *)
  then env 
  else let record_decls = xs::env.record_decls in {env with record_decls}

let env_add_variant_type_declaration ~(env:env) ~(type_name:Ast.ident_ren)
    ~(enum:name list) : env =
  let constructors =
    let ext = List.map (fun c -> (c,type_name)) enum in
    ext @ env.constructors
  in
  {env with constructors}

let err_unbound_value ~loc xr =
  Err.error_exit loc @@
  Printf.sprintf "Unbound value %s" @@
  Ast.string_of_ident_ren xr

let is_constructor x ~env = 
  List.assoc_opt x env.constructors <> None

let default_value ~(env : env) ~(ty : Types.t) : Target.exp = 
  let rec value ty = 
    match ty with
    | Types.T_int -> Target.ML_E_literal{k=ML_C_int "0"}
    | Types.T_bool -> Target.ML_E_literal{k=ML_C_bool false}
    | Types.T_string -> Target.ML_E_literal{k=ML_C_string ""}
    | Types.T_ident {name} ->   
        (match List.find_opt
                (fun (_,Ast.Id_ren{x=name'}) -> name = name')
                env.constructors
        with 
        | None -> Target.ML_E_literal{k=ML_C_poly}
        | Some (c,r) -> let c,_ = (Names.normalize_constructor c,r) in     
                        Target.ML_E_literal{k=ML_C_variant c})
    | Types.T_tuple{tys} -> 
      Target.ML_E_tuple{es=List.map (fun ty -> value ty) tys}
    | Types.T_struct{contents={fields}} ->
      let assocs = List.map (fun (x,ty) -> (Names.normalize_ident x,value ty)) fields in
      Target.ML_E_record{assocs}
    | T_alpha v -> (match !v with 
        | Unknown n -> Target.ML_E_literal({k=ML_C_alpha n})
        | Instanciated ty -> value ty) (* que faire ?? *)
    | Types.T_pow{ty=Types.T_tuple{tys=[_;_]}} -> Target.(ML_E_literal{k=ML_C_empty_array})
    | _ -> assert false (* pas B0 *)
  in value ty

let rec rw_ident_ren ?(loc=Err.default_position) ~env (Ast.Id_ren{x;r} as xr) = 
  let x' = Names.normalize_ident x in
  match List.assoc_opt xr env.variables with
  | None -> err_unbound_value ~loc xr
  | Some Var -> 
    (match xr with
     | Ast.Id_ren{r=[m]} ->
       let module_name = Names.normalize_module_name m in
       Target.ML_E_app_unop{op=Deref;
                            e=ML_E_open_module_in{module_name;
                                                  e=Target.ML_E_name{x=x'}}}
     | _ -> Target.ML_E_app_unop{op=Deref;e=ML_E_name{x=x'}})
  | Some Cst ->      
    (match xr with 
     | Ast.Id_ren{r=[m]} ->
       let module_name = Names.normalize_module_name m in
       ML_E_open_module_in{module_name;e=Target.ML_E_name{x=x'}}
     | _ -> Target.ML_E_name{x=x'})


let rw_constant ~(k:Ast.const) : Target.const = 
  match k with
  | Ast.C_int (Num m) -> Target.ML_C_int m
  | Ast.C_int Max_int -> Target.ML_C_name "max_int"
  | Ast.C_int Min_int -> Target.ML_C_name "min_int"
  | Ast.C_bool b -> Target.ML_C_bool b
  | Ast.C_string s -> Target.ML_C_string s

let rw_unop ~(op : Ast.unop) : Target.unop = 
  match op with
  | Ast.Uminus -> Target.Neg
  | Ast.Succ -> Target.Succ
  | Ast.Pred -> Target.Pred

let rw_binop ~(op : Ast.binop) : Target.binop = 
  match op with
  | Ast.Add -> Target.Add
  | Ast.Sub -> Target.Sub
  | Ast.Mul -> Target.Mul
  | Ast.Div -> Target.Div
  | Ast.Mod -> Target.Mod
  | Ast.Pow -> Target.Pow

let fold_with_env env f xs = 
  let rec aux acc env = function 
      [] -> (List.rev acc,env)
    | t::ts -> let (e,env) = f env t in aux (e::acc) env ts in
  aux [] env xs

let rec rw_terms ~(env : env) ~(terms : Ast.term list) :
  (Target.exp list * env) = 
  fold_with_env env (fun env a -> rw_term ~env ~term:a) terms

and rw_term ~(env : env) ~(term : Ast.term) : (Target.exp * env) =
  let Ast.{desc;loc} = term in
  match desc with
  | Ast.A_const {k} -> 
    (* C[k](p) ~> (k,p) *)
    let res = Target.ML_E_literal{k=rw_constant ~k} in 
    (res,env)

  | Ast.A_ident {xr} ->
    let Id_ren{x;r} = xr in
    let res = (match r with
        | [] when is_constructor x ~env -> 
          let cons = Names.normalize_constructor x in
          Target.ML_E_literal {k=ML_C_variant cons}
        | _ -> rw_ident_ren ~loc ~env xr) in
    (res,env)

  | Ast.A_app_unop{op;a} -> 
    (* C[op] ~> op
       C[a](p) ~> (e,p') 
       -------------------------
       C[op a](p) ~> ((op e),p')      
    *)
    let op = rw_unop ~op in
    let (e,env) = rw_term ~env ~term:a in 
    let res = Target.ML_E_app_unop{op;e} in
    (res,env)
  | Ast.A_Range{a1;a2} -> 
    let (e1,env) = rw_term ~env ~term:a1 in 
    let (e2,env) = rw_term ~env ~term:a2 in 
    let res = Target.ML_E_tuple{es=[e1;e2]} in
    (res,env)
  | Ast.A_app_binop{op;a1;a2} -> 
    (* C[op] ~> op
       C[a1](p) ~> (e1,p1)
       C[a2](p) ~> (e2,p2) 
       ---------------------------------
       C[a1 op a2](p) ~> ((e1 op e2),p2) *)
    let op = rw_binop ~op in
    let (e1,env) = rw_term ~env ~term:a1 in
    let (e2,env) = rw_term ~env ~term:a2 in 
    let res = Target.ML_E_app_binop{op;e1;e2} in
    (res,env)

  | Ast.A_array {arr} ->
    (match arr with   

     | Ast.B_array_init (ranges,a) -> 
       let (e,env) = rw_term ~env ~term:a in
       let array_init =
         Target.ML_E_open_module_in{module_name="Array";
                                    e=ML_E_name{x="init"}} in
       let fold_array v = 
         List.fold_left (fun (acc,env) range -> 
             match range with
             (* | Ast.Range_as_set _ -> (Printf.printf "todo\n" ;assert false) *)
             | a -> 
               let e,env = rw_term ~env ~term:a in 
               let e2= Target.(ML_E_app{e=ML_E_name{x="snd"};args=[e]}) in
               let f = Target.ML_E_fun{x="_";e=acc} in
               let app = Target.ML_E_app{e=array_init;args=[e2;f]} in
               (app,env)
       ) (v,env) ranges in
      (match e with 
      | Target.ML_E_literal _ -> fold_array e
      | _ -> let (app,env) = fold_array (Target.ML_E_name{x="_tmp"}) in
             let e = Target.ML_E_let_in{x="_tmp";e1=e;e2=app} in (e,env))

     | Ast.B_array_ext {maplets} -> 
       let rec aux idxs = match idxs with 
         | [] -> assert false
         | []::_ -> []
         | _ -> 
           let mx = 1 + List.fold_left (fun acc idx ->
               match idx with 
               | [] -> assert false
               | Ast.{desc=A_const{k=C_int(Num s)}}::t -> max acc (int_of_string s)
               | _ -> assert false
               (* indices garantis entiers par typage *))
               0 idxs
           in
           mx :: aux (List.map List.tl idxs)
       in

       let idxs,vals = List.split maplets in
       let es,env = rw_terms ~env ~terms:vals in
       let mxs = aux idxs in
       let group_by n0 l = 
         let rec aux acc n l = match l with
           | [] -> [Target.ML_E_array_create {es=List.rev acc}]
           | x::xs -> (match n with 
               | 0 -> Target.ML_E_array_create{es=List.rev acc} :: (aux [] n0 l)
               | n -> aux (x::acc) (n-1) xs) in
         aux [] n0 l
       in

       let res = List.fold_left (fun acc mx -> group_by mx acc) es mxs in
       let res = match res with [e] -> e | _ -> assert false in
       res,env)

  | Ast.A_app (* A_array_access*) {xr={y;ty};idxs} ->
    (* C[xr](p)  ~> (e,p1)
       C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (en,p')
       ----------------------------------------------------
       C[xr(a1,a2,...,an)] ~> (e.(e1).(e2).[...].(en),p'> *)
    let e = rw_ident_ren ~loc ~env y in
      let (es,env) = rw_terms ~env ~terms:idxs in 
    (match Types.shorten ty with 
    | Types.T_pow _ ->    
      let res = List.fold_left (fun e k -> Target.ML_E_array_access {e;k}) e es in
      (res,env)
    | Types.T_arrow _ -> 
      let res = Target.ML_E_app{e;args=es} in
      (res,env)
    | ty -> Printf.printf "[%s]\n" @@ Types.printTy ty; assert false)

  | Ast.A_record_access{a;x} ->
    (* C[xr](p) ~> (e,p')
       w(x) = z
       -----------------------------------------------
       C[xr'x)](p) ~> (e.z,p') *)
    let (e,env) = rw_term ~env ~term:a in
    let z = Names.normalize_ident x in
    let res = Target.ML_E_get_field {e;x=z} in
    (res,env)
  | Ast.A_record_create {assocs} ->
    (* C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (en,p)
      
       w(x1) = z1
       ...
       w(xn) = zn
       env_add_record_declaration(p,[x1;x2;...;xn]) ~> p'
       ------------------------------------------------------------------
       C[rec(x1:e1,x2:e2,...,xn=en)](p1) ~> ({z1=e1;z2=e2;...;zn=en}, p') 
    *)
    let xs,ts = List.split assocs in
    let (es,env) = rw_terms ~env ~terms:ts in
    let assocs=List.combine xs es in
    let assocs=List.filter_map 
        (function 
            (None,_) -> None 
          | (Some x,e) -> Some (x,e)) assocs in
    let field_names = List.map fst assocs in
    let res = Target.ML_E_record {assocs=List.map (fun (x,t) -> Names.normalize_ident x,t) assocs} in
    let env = env_add_record_declaration ~env ~field_names in
    (res,env)
  | Ast.A_of_condition {c} -> 
    (* C[c](p) ~> (e,p')
       ----------------------
       C[bool c](p) ~> (e,p') *)
    rw_condition ~env ~cond:c

and rw_comparator ~(op : Ast.comparator) : Target.binop = 
  match op with
  | Ast.Eq -> Target.Eq
  | Ast.Neq -> Target.Neq
  | Ast.Lt -> Target.Lt
  | Ast.Gt -> Target.Gt
  | Ast.Le -> Target.Le
  | Ast.Ge -> Target.Ge

and rw_condition ~(env : env) ~(cond : Ast.condition) : (Target.exp * env) =
  let Ast.{desc;loc} = cond in
  match desc with

  | Ast.Compare{op;a1;a2} ->
    (* C[op] ~> op
       C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       ---------------------------------
       C[c1 op c2](p) ~> ((e1 op e2),p2) *)
    let op = rw_comparator ~op in
    let (e1,env) = rw_term ~env ~term:a1 in
    let (e2,env) = rw_term ~env ~term:a2 in  
    let res = Target.ML_E_app_binop {op;e1;e2} in
    (res,env)

  | Ast.Not {c} ->
    (* C[a](p) ~> (e,p') 
       --------------------------
       C[not a](p) ~> ((op e),p') *)
    let (e,env) = rw_condition ~env ~cond:c in
    let res = Target.ML_E_app_unop {op=Target.Not;e} in
    (res,env)

  | Ast.Or {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       ---------------------------------
       C[c1 or c2](p) ~> ((e1 || e2),p2)  *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.ML_E_app_binop {op=Target.Or;e1;e2} in
    (res,env)

  | Ast.And {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       --------------------------------
       C[c1 & c2](p) ~> ((e1 && e2),p2) *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.ML_E_app_binop {op=Target.And;e1;e2} in
    (res,env)

(**   
     traduction d'un instruction 
*)

let rec rw_instruction ~(env : env) ~(inst : Ast.instruction)
  : (Target.exp * env) = 
  let Ast.{desc;loc} = inst in
  match desc with

  | Ast.I_skip -> 
    (* C[skip](p) ~> skip,p *)
    (Target.ML_E_skip,env)
  | Ast.I_seq{i1={desc=Ast.I_skip;_};i2} ->
     (* remove useless skip on the left-hand side of a sequence *)
     rw_instruction ~env ~inst:i2
  | Ast.I_seq{i1;i2} ->
    (* C[i1](p) ~> (e1,p1)
       C[i2](p1) ~> (e2,p2) 
       --------------------------------
       C[i1;i2](p) ~> ((e1;e2),p2) *)
    let e1,env = rw_instruction ~env ~inst:i1 in
    let e2,env = rw_instruction ~env ~inst:i2 in
    (Target.ML_E_seq{es=[e1;e2]},env)
  | Ast.I_var{xs;i} ->
    let variables0 = env.variables in

    let env = 
      let idents = List.map (fun Ast.{y} -> Ast.x2xr y) xs in 
      env_extends ~env ~vartype:Ast.Var ~idents 
    in
    let e,env = rw_instruction ~env ~inst:i in
    let vars = List.map (function 
        | Ast.{y;ty} -> 
          let x = Names.normalize_ident y in 
          (x,default_value ~env ~ty)) xs in
    let res = Target.ML_E_var {vars;e} in
    let env = {env with variables=variables0} in
    (* restaure *)
    (res,env)

  | Ast.I_assign{xr;a} ->
    let e,env = rw_term ~env ~term:a in
    let Id_ren{x;r} = xr in
    let res = match r with
      | [] when is_constructor x ~env -> assert false     
      | _ -> (match List.assoc_opt xr env.variables,r with
          | None,_ -> err_unbound_value ~loc xr
          | Some _,[] ->
            (* | Some Arg_out,None ->*)
            let x = Names.normalize_ident x in  
            Target.ML_E_app_binop{op=SetRef;e1=ML_E_name{x};e2=e}
          | Some _,(o::_) -> 
            failwith "pas le droit de modifier une variable\
                     \ d'une autre machine (sans passer par\
                     \ ses opérations propres)") in
    (res,env)

  | Ast.I_array_assign{xr;idxs;a=new_val} -> 
    (*        
       C[a](p) ~> (v,p0)
       C[xr](p0) ~> (e,p1) 
       C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (e1,p')
       ------------------------------------------------------------------
       C[xr(a1,a2,...,an) := a](p) ~> ((e.(e1).(e2).[...].(en) <- v),p') *)
    let v,env = rw_term ~env ~term:new_val in 
    let e = rw_ident_ren ~loc ~env xr in
    let es,env = rw_terms ~env ~terms:idxs in
    let res = Target.ML_E_array_assign {xr;e;es;v} in
    (res,env)


  | Ast.I_record_assign{xr;xs;a=new_val} -> 
    let e = rw_ident_ren ~loc ~env xr in
    let v,env = rw_term ~env ~term:new_val in 
    let xs = List.map Names.normalize_ident xs in
    let res = Target.ML_E_set_field{e;xs;v} in
    (res,env)

  | Ast.I_while{c;i} -> 
    (* C[c](p) ~> (e,p') 
       C[i](p') ~> (i,p'') 
       ------------------------------------------------
       C[WHILE c DO i END] ~> ((while e do i done),p'') *)
    let c,env = rw_condition ~env ~cond:c in
    let e,env = rw_instruction ~env ~inst:i in
    let res = Target.ML_E_while {c;e} in
    (res,env)

  | Ast.I_if{c0;i0;cases;others} -> 
    let c,env = rw_condition ~env ~cond:c0 in
    let e1,env = rw_instruction ~env ~inst:i0 in
    let m,env = 
      let e_else,env = match others with 
        | None -> Target.ML_E_skip,env
        | Some i -> rw_instruction ~env ~inst:i 
      in
      List.fold_left
        (fun (acc,env) (c1,i1) -> 
           let c,env = rw_condition ~env ~cond:c1 in
           let e1,env = rw_instruction ~env ~inst:i1 in
           Target.ML_E_if {c;e1;e2=acc},env)
        (e_else,env)
        cases 
    in
    let res = Target.ML_E_if {c;e1;e2=m} in
    (res,env)

  | Ast.I_case{a;cases;others} -> 
    let rw_pat (k : Ast.const) =
     (* NB : le littéral MAXINT (resp. MININT) 
             est traduit en un motif (c when c = max_int). *)
      match rw_constant ~k with 
      | Target.ML_C_name _ as k -> 
        Target.{k=Target.ML_C_name "c";
                w=Some (ML_E_app_binop{op=Target.Eq;
                                       e1=ML_E_name{x="c"};
                                       e2=ML_E_literal{k}})}
      | k -> Target.{k;w=None}
    in
    let rw_case env (csts,i) = 
      let cs = List.map rw_pat csts in
      let e,env = rw_instruction ~env ~inst:i in
      ((cs,e),env) 
    in
    let rw_cases env cases = 
      fold_with_env env rw_case cases in
      let others,env = match others with
      | None -> (None,env) 
      | Some inst -> 
        let e,env = rw_instruction ~env ~inst in 
        (Some e, env) 
    in
    let e,env = rw_term ~env ~term:a in
    let cases,env = rw_cases env cases in
    let res = Target.ML_E_match{e;cases; others} in
    (res,env)

  | Ast.I_call {outs;op;args} ->  
    (match List.assoc_opt op env.variables with 
     | Some Var -> assert false
     | Some Cst -> 
       (let es_args,env = rw_terms ~env ~terms:args in 
        let Id_ren{x=f;r} = op in
        let f = Names.normalize_ident f in
        let e = match r with 
          | [] -> Target.ML_E_name{x=f}
          | m::_ -> let module_name = Names.normalize_module_name m in 
            Target.ML_E_open_module_in{module_name;e=Target.ML_E_name{x=f}}
        in
        let outs_refs = List.map (function Ast.{y=Id_ren{x;r=[m]}} -> 
            let module_name = normalize_module_name m in
            let x = normalize_ident x in
            Target.ML_E_open_module_in{module_name;e=Target.ML_E_name{x}} 
                                         | Ast.{y=Id_ren{x}} -> 
                                           let x = normalize_ident x in 
                                           Target.ML_E_name{x}) outs in
        let call = Target.ML_E_app {e;args=outs_refs @ es_args} in
        (call,env))
     | None -> err_unbound_value ~loc op)

  | Ast.I_assert{c;i} ->
    let c,env = rw_condition ~env ~cond:c in
    let e,env = rw_instruction ~env ~inst:i in
    let res = Target.ML_E_assert {c;e} in
    (res,env)

  | Ast.Debug_print_int{a} -> 
    let e,env = rw_term ~env ~term:a in 
    let res = Target.ML_E_print_int{e} in 
    (res,env)

  | Ast.Debug_print_type _
  | Ast.Debug_ill_typed _
    -> (* noeuds produisant des affichages (debug) 
          dans le typeur. --> transformé en skip *)
    (Target.ML_E_skip,env)


type clause_result = { decls_before:Target.decl list;
                       module_components:Target.decl list;
                       env:env}

let rw_sees ~(env : env) ~(mchs : Ast.ident_ren list) = 
  (* idem que inclusion (copier coller) *)
  let env = 
    let variables = List.fold_left (fun variables (Ast.Id_ren{x=mch;r}) -> 
        let ext = List.filter_map (function 
            | (Ast.Id_ren{x;r=[mch']},y) -> (* Printf.printf "====> %s\n" x; *)
              if mch = mch' 
              then (Some (match r with
                  | [] -> (Ast.x2xr x,y) 
                  | _ -> (Ast.x2xr ~r x,y) ))
              else None
            | _ -> None) variables in
        (ext@variables)) env.variables mchs in
    { env with variables } in

  let module_components = 
    List.map (function Ast.Id_ren{r=m::_} | Ast.Id_ren{x=m} -> 
        Target.OpenModule{module_name=Names.normalize_module_name m}) mchs in
  { decls_before=[];
    module_components;
    env }

let rw_sets ~(env : env) ~(component_name : Ast.ident) ~(sets : Ast.set list) = 
  let rec aux acc env = function
    | [] -> (List.rev acc,env)
    | set::xs -> (match set with 
        | Ast.SetIdent{x} -> aux acc env xs
        | Ast.DefSet{x;enum} -> 
          let enum' = List.map Names.normalize_constructor enum in
          let m = Names.normalize_ident component_name in
          let type_name = m ^ "_" ^ x in
          let env = env_add_variant_type_declaration env (Ast.x2xr ~r:[m] x) enum in
          aux (Target.TyVariantDecl{x=type_name;enum=enum'}::acc) env xs) in
  let acc,env = aux [] env sets in
  let res = Target.D_comment{s="sets"}  :: List.rev acc in
  { decls_before=res;
    module_components=[];
    env }

let rw_inclusions ~(env : env)
    ~(mchs_init : (Ast.ident_ren * Ast.term list) list) = 
  let mchs,params = List.split mchs_init in 
  let rec aux acc env = function
    | [] -> (List.rev acc, env) 
    | ts::r -> let es,env = rw_terms ~env ~terms:ts in
      aux (es::acc) env r in
  let params,env = aux [] env params in
  let mchs = List.combine mchs params in

  let env = 
    let variables = List.fold_left (fun variables ((Ast.Id_ren{x=mch;r}),_) -> 
        let ext = List.filter_map (function 
            | (Ast.Id_ren{x;r=[mch']},y) ->
              if mch = mch' 
              then (Some (match r with
                  | [] -> (Ast.x2xr x,y) 
                  | _ -> (Ast.x2xr ~r x,y) ))
              else None
            | _ -> None) variables in
        (ext@variables)) env.variables mchs_init in
    { env with variables } in

  let mchs_included,mchs_ren =
    List.partition
      (function
        | (Ast.Id_ren{x;r=[]},_) -> true
        | _ -> false) mchs
  in

  let module_components = List.map (fun (xr,parameters) -> 
      match parameters with 
      | [] -> (match xr with
          | Ast.Id_ren{x=m;r=[]} -> 
            let module_name = Names.normalize_module_name m in 
            Target.IncludeModule{module_name}
          | _ -> assert false)
      | _ -> (match xr with
          | Ast.Id_ren{x=m;r=[]} ->
            let functor_name = "Make"^Names.normalize_module_name m in
            let e = match parameters with 
              | [] -> Target.ML_E_literal{k=ML_C_unit} 
              | _ -> Target.ML_E_tuple{es=parameters} 
            in
            let structure = Target.[Let{p=PVar "parameters";e}] in
            Target.IncludeFunctorApp{functor_name;parameters=[structure]}
          | _ -> assert false)
    ) mchs_included in

  let decls_before,decl_after = 
    let rec aux decls_before module_components = function
      | [] -> List.rev decls_before, List.rev module_components
      | (Ast.Id_ren{r=(r1::x::_)},parameters)::tl
      | (Ast.Id_ren{x;r=(r1::_)},parameters)::tl -> 
        let module_name = normalize_module_name r1 in
        let functor_name = "Make" ^ normalize_module_name x in
        let structure = 
          match parameters with 
          | [] -> []
          | _ ->  Target.[Let{p=PVar "parameters";e=ML_E_tuple{es=parameters}}] 
        in
        let app = Target.FunctorApp{module_name;functor_name;parameters=[structure]} in
        (match parameters with 
         | [] -> if List.mem r1 env.all_mchs_ren then aux decls_before module_components tl 
           else aux (app::decls_before) module_components tl
         | _ -> aux decls_before (app::module_components) tl)
      | _ -> assert false in 
    aux [] [] mchs_ren 
  in

  let env = {env with all_mchs_ren = 
                        List.map (function (Ast.Id_ren{r=(m::_)},_) -> m | _ -> assert false) mchs_ren @ env.all_mchs_ren} in


  let module_components = module_components @ decl_after in
  { decls_before;
    module_components;
    env }

let rw_concrete_variables ~(env : env) ~(xs : Ast.ident_ren Ast.annot list) = 
  let res =
    List.map (function 
        | Ast.{y=Ast.Id_ren{x;r=[]};ty} ->
          let x = normalize_ident x in
          let default=default_value ~env ~ty in
          Target.Let{p=PVar x;e=ML_E_app{e=ML_E_name{x="ref"};args=[default]}}
        | _ -> assert false (* le renommage est possible d'après la grammaire,
                               mais quel est le comportement attendu ? *)
      ) xs in

  let res = Target.D_comment{s="variables"} :: res in

  let env = 
    let idents=List.map (fun Ast.{y} -> y) xs in
    env_extends ~env ~vartype:Ast.Var ~idents 
  in
  { decls_before=[];
    module_components=res;
    env }

let rw_initialisationB0 ~env ~inst =
  let e,env = rw_instruction ~env ~inst in
  let res = [Target.VoidExp{e}] in
  let res = Target.D_comment{s="initialisation"} :: res in
  { decls_before=[];
    module_components=res;
    env }

let rw_concrete_constants ~(env : env) ~(cs : Ast.ident list) = 
  { decls_before=[];
    module_components=[];
    env } (* cf. clauses values *)

let rw_operation ~(env : env) ~(ops : Ast.operationB0 Ast.loc list)
    ~(local:bool) =
  (* les opérations sont mutuellement récursives *)
  let env = 
    let idents=List.map (function Ast.{desc={h={name}}} -> name) ops in
    env_extends ~env ~vartype:Ast.Cst ~idents 
  in
  let rec aux acc env = function
    | [] -> let res = [Target.LetFunRec (List.rev acc)] in
            (res,env)
    | Ast.{desc={h={return=outs;name;args};i}}::xs -> 

      (* ajout des arguments de l'opération à l'environnement *)
      let env_op = 
        let idents = List.map (fun Ast.{y} -> Ast.x2xr y) args in
        env_extends ~env ~vartype:Ast.Cst ~idents 
      in 

      let env_op = 
        let idents = List.map (fun Ast.{y} -> Ast.x2xr y) outs in
        env_extends ~env:env_op ~vartype:Ast.Var ~idents 
      in

      let e,env_op = rw_instruction env_op i in

      let env = env_extends ~env ~vartype:Ast.Cst ~idents:[name] in
      let Ast.Id_ren{x;r} = name in  (* que faire avec le renommage de l'op ?? *)
      assert (r = []);
      let x = Names.normalize_ident x in
      let args = List.map (fun Ast.{y} -> Target.PVar (normalize_ident y)) args in
      let outs = List.map (fun Ast.{y} -> Target.PVar (normalize_ident y)) outs in
      let args=outs@ args in
      let args = match args with [] -> [Target.(PLiteral ML_C_unit)] | _ -> args in
      aux (Target.{x;args;e}::acc) env xs
  in
  let res,env = aux [] env ops in
  let res = Target.D_comment{s="operations"} :: res in
  { decls_before=[];
    module_components=res;
    env }



let rw_values ~(env : env) ~(bindings : Ast.bindings) = 
  let rec aux acc env = function
    | [] -> 
      (List.rev acc,env)
    | (x,a)::xs -> 
      let e,env = rw_term ~env ~term:a in
      let env = env_extends ~env ~vartype:Ast.Cst ~idents:[Ast.x2xr x] in
      let x = Names.normalize_ident x in
      let c = Target.Let{p=PVar x;e} in
      aux (c::acc) env xs
  in
  let res,env = aux [] env bindings in
  { decls_before=[];
    module_components=res;
    env }


let rw_clause ~(env : env) ~(component_name:Ast.ident) ~(clause:Ast.clause) 
  : clause_result = 
  let Ast.{desc;loc} = clause in
  match desc with 
  | Ast.Sees{mchs} -> rw_sees ~env ~mchs
  | Ast.Sets{sets} -> rw_sets ~env ~component_name ~sets
  | Ast.Inclusion {mchs_init} -> rw_inclusions ~env ~mchs_init
  | Ast.Concrete_variables {xs} -> rw_concrete_variables ~env ~xs
  | Ast.InitialisationB0 {i} -> rw_initialisationB0 ~env ~inst:i
  | Ast.Concrete_constants {cs} -> rw_concrete_constants ~env ~cs
  | Ast.Values {bindings} -> rw_values ~env ~bindings 
  | Ast.OperationsB0{ops;local} -> rw_operation ~env ~ops ~local
  | _ -> { decls_before=[]; module_components=[]; env }



let rw_component ~(env : env) ~(component : Ast.component)
  : (Target.decl list * env) = 

  match component with
  | Ast.{desc=Component {name=m;parameters;clauses=cs}} ->
    Err.current_file_name := m;
    let env =
      env_extends ~env ~vartype:Ast.Cst
        ~idents:(List.map (fun Ast.{y} -> Ast.x2xr y) parameters)
    in
    (* fusion des clauses inclusions de la machine et de son implémentation *)
    let cs = let rec aux mchs_init acc = function
        | [] -> Ast.{loc=Err.default_position;
                     desc=Inclusion{mchs_init}}::(List.rev acc)
        | Ast.{desc=Inclusion{mchs_init=mi}}::tl -> aux (mchs_init@mi) acc tl
        | x::tl -> aux mchs_init (x::acc) tl in
      aux [] [] cs in

    (* dans le cas suivant,
       - imp0 rafine mch0
       - imp1 rafine mch1
       - mch1 inclut mch0
       - imp1 inclut impl0
         la fusion des machines avec leur implémentations 
         produit une double inclusion redondante,
         ce que l'on évite comme ceci :
    *)
    let cs = List.filter_map
        (function
          | Ast.{desc=Inclusion{mchs_init}} -> 
            (let rec aux ((Ast.Id_ren{x;r=non},_) as r) acc mchs_init = 
               assert (non = []);
               match mchs_init with
               | [] -> r,List.rev acc
               | ((Ast.Id_ren{x=m';r=[]},_) as r')::tl ->
                 if m = m' then aux r' acc tl
                 else aux r (r'::acc) tl
               | r'::tl -> aux r (r'::acc) tl 
             in
             let rec aux2 = function
               | [] -> []
               | ((Ast.Id_ren{x=m;r=[]},_) as r)::mchs_init -> 
                 let x',t' = aux r [] mchs_init 
                 in x'::aux2 t'
               | x::t -> x::aux2 t in 
             let mchs_init = aux2 mchs_init in 

             if mchs_init = [] then None
             else Some Ast.{loc=Err.default_position;
                            desc=Ast.Inclusion{mchs_init}})
          | c -> Some c) cs
    in 
    (* les clauses doivent être triées *) 
    let {decls_before;module_components;env} = List.fold_left 
        (fun {decls_before;module_components;env} clause -> 
           match rw_clause ~env ~component_name:m ~clause with
           | {decls_before=db;module_components=cp;env} -> 
             {decls_before=decls_before@db;
              module_components=module_components@cp;
              env}      
        ) {decls_before=[];module_components=[];env} 
        cs in

    let module_name = normalize_module_name m in
    let functor_name = "Make"^module_name in
    let signature =
      match parameters with
      | [] -> []
      | _ -> [("parameters",
               Types.T_tuple {tys=List.map(fun Ast.{y;ty} -> ty) parameters}
              )]
    in
    let include_parameters =
      match parameters with
      | [] -> []
      | _ -> [Target.Let{p=Target.PNuplet (List.map
                                             (fun Ast.{y;ty} -> Target.PVar (Names.normalize_ident y))
                                             parameters);
                         e=Target.ML_E_open_module_in{module_name="Parameters";
                                                      e=ML_E_name{x="parameters"}}}]
    in
    let f = Target.FunctorDecl{functor_name;
                               parameters=["Parameters",signature];
                               structure=include_parameters @
                                         module_components}
    in
    let decls = f :: (match parameters with 
        | [] -> [Target.FunctorApp{module_name;functor_name;parameters=[[]]}]
        | _ -> []) in

    let env = {env with variables=List.map (fun (x,s) -> 
        let x = match x with 
            Ast.Id_ren{x=y;r=[]} -> Ast.x2xr ~r:[m] y
          | _ -> x 
        in (x,s)) env.variables} in

    (decls_before @ decls,env)


let record_declarations ~(env : env) : Target.decl list =
  List.mapi (fun i rc ->    
      let bound_variables = List.map (fun _ -> Types.fresh_variable ()) rc in
      let name = "r" ^ string_of_int i in
      let fields = List.map2 (fun x n ->
          let x' = Names.normalize_ident x in
          let ty = Types.T_alpha n in
          Target.RecordField{x=x';ty;mutability=true}) rc bound_variables in
      Target.TyRecordDecl {bound_variables;name;fields})
    env.record_decls

let rw_program ~intial_env ~(components:Ast.component list) : Target.decl list = 
  let compile (acc,env) component =
    let decls,env = rw_component ~env ~component in
    (acc @ decls,env)
  in
  let decls, env = List.fold_left compile ([],(make_env ~intial_env ())) components in
  record_declarations ~env @ decls


let translate ?(intial_env=[]) ~(components:Ast.component list) : string =
  rw_program ~intial_env ~components |> Pprint.print_decls
