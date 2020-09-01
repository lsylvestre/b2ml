open Names

type name = string

type env = { 
  record_decls:(name list) list; 
  (* liste de noms de champs de chaque record *)

  variables:(Ast.ident_ren * Target.vartype) list;
  current_sees : (Ast.ident_ren * name) list; (* associe un identificateur à son module (ouvert) *)
  current_inclusions : Ast.ident list;
  current_constants : Ast.ident list;
  constructors:(name * Ast.ident_ren) list;
  current_mchs_ren: (Ast.ident_ren * Target.exp list) list; 
  (* noms et paramètres et machines importées dans la machine courrante *)
}

let init_env = {record_decls=[]; (* liste de noms de champs de chaque record *)
                variables=[];
                current_sees=[];
                current_inclusions=[];
                current_constants=[];
                constructors=[];
                current_mchs_ren=[]}

let env_extends ~(env:env) ~(vartype:Target.vartype) 
    ~(idents:Ast.ident_ren list) : env = 
  let variables=(List.mapi (fun i x -> (x,vartype)) idents)@env.variables in
  (* let current_sees = List.filter (fun (xr,_) -> not (List.mem xr idents)) env.current_sees in*)
  {env with variables}

let env_add_record_declaration ~(env:env) ~(field_names:name list) : env = 
  let xs = List.sort compare field_names in
  if List.mem xs env.record_decls
  (* les xs' dans env.record_decls sont déjà triés par construction *)
  then env 
  else let record_decls = xs::env.record_decls in {env with record_decls}

let env_add_variant_type_declaration ~(env:env) ~(type_name:Ast.ident_ren)
    ~(enum:name list) : env =
  let constructors = (List.map (fun c -> (c,type_name)) enum) @ env.constructors in
  {env with constructors}

let err_unbound_value ~loc xr =
  Err.error_exit loc (Printf.sprintf "Unbound value %s" (Ast.string_of_ident_ren xr))

let is_constructor x ~env = 
  List.assoc_opt x env.constructors <> None

let default_value ~(env : env) ~(ty : Types.t) : Target.exp = 
  let rec value ty = 
    match ty with
    | Types.Int -> Target.(Literal{k=Int "0"})
    | Types.Bool -> Target.(Literal{k=Bool false})
    | Types.String -> Target.(Literal{k=String ""})
    | Types.Ident {name} -> 
      let c,_ = match List.find_opt (fun (_,(name',_)) -> name = name') env.constructors with 
        | None -> assert false 
        | Some c -> c 
      in 
      Target.(Literal{k=Variant c})
    | Types.Tuple{tys} -> 
      Target.Nuplet{es=List.map (fun ty -> value ty) tys}
    | Types.Struct{contents={fields}} ->
      let assocs = List.map (fun (x,ty) -> (x,value ty)) fields in
      Target.Record{assocs}
    | Alpha v -> (match !v with 
                  | Unknown n -> Target.Literal({k=AlphaWitness n})
                  | Instanciated ty -> value ty)(* que faire ?? *)
    | Types.Pow{ty=Types.Tuple{tys=[_;_]}} -> Target.(Literal{k=EmptyArray})
    | _ -> assert false (* pas B0 *)
  in value ty

let rec rw_ident_ren ?(loc=Err.default_position) ~env xr = 
  (* let v = match List.assoc_opt xr env.variables with (* gestion des captures *) 
          | None -> let xr' = match List.assoc_opt xr env.current_sees,xr with
                            | None,xr ->  err_unbound_value ~loc xr
                            | Some m,(x,None) -> (x,Some[m])
                            | Some m,(x,Some l) ->(x,Some (m::l)) in 
                     List.assoc_opt xr' env.variables
          | o -> o in
     match v with*)
  let xr' = match List.assoc_opt xr env.variables with 
    | None -> (match List.assoc_opt xr env.current_sees,xr with
        | None,xr -> xr
        | Some m,(x,None) -> (x,Some[m])
        | Some m,(x,Some l) ->(x,Some (m::l)))
    | _ -> xr in 
  match List.assoc_opt xr' env.variables with
  | None -> err_unbound_value ~loc xr
  | Some LV | Some Arg_out ->
    (match xr with
     | (x,None) ->
       let x = Names.normalize_ident x
       in Target.AppUnOp{op=Deref;e=Name{x}}
     | _ -> assert false)
  | Some Arg_in -> 
    (match xr' with
     | (x,None) ->
       let x = Names.normalize_ident x 
       in Target.Name{x}
     | _ -> assert false)
  | Some CST -> (match xr' with 
      | (x,Some (o::_)) ->
        let m = Names.normalize_ident x in
        AppMth{o;m;args=[]}
      | (x,_) -> 
        if List.mem x env.current_constants then
         let x = Names.normalize_ident x in 
        Target.Name{x} else
        let m = Names.normalize_ident x in 
        AppMth{o="self";m;args=[]})
  | Some GV -> 
    (match xr' with 
     | (x,Some (o::_)) ->
       (*let m = Names.normalize_ident x in
       AppMth{o;m;args=[]}  *)
        let m = Names.normalize_ident x in
       if (List.mem o env.current_inclusions) || List.assoc_opt xr env.current_sees <> None
       then let o = Names.normalize_ident o in AppMth{o;m;args=[]}
       else AppMth{o="self";m;args=[]}
     | (x,_) ->
       let m = Names.normalize_ident x in
       AppMth{o="self";m;args=[]})
  | Some OP -> assert false


let rw_constant ~(k:Ast.const) : Target.const = 
  match k with
  | Ast.Int m -> Target.Int (match m with 
      | Ast.Num n -> n
      | Ast.Max_int -> string_of_int max_int
      | Ast.Min_int -> string_of_int min_int)
  | Ast.Bool b -> Target.Bool b
  | Ast.String s -> Target.String s

let rw_unop ~(op : Ast.unop) : Target.unop = 
  match op with
  | Ast.Uminus -> Target.Neg
  | Ast.Succ -> Target.Succ
  | Ast.Pred -> Target.Pred

let rw_binop ~(op : Ast.binop) : Target.binop = 
  Runtime.binop_occur op; 
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
  | Ast.Const {k} -> 
    (* 
       ----------------
       C[k](p) ~> (k,p) *)
    let k = rw_constant ~k in
    let res = Target.Literal {k} in
    (res,env)

  | MLIdent {x} -> (Target.Name{x},env)
  (* pour MLIdent, y a t'il besoin d'inspecter le champs constructors 
     de l'env, (etc.) comme on le fait pour Ast.Ident ? *)
  | Ast.Ident {xr} ->
    let (x,r) = xr in
    let res = (match r with
        | None when is_constructor x ~env -> 
          let cons = Names.normalize_capitalized x in
          Target.Literal {k=Variant cons}
        | _ -> rw_ident_ren ~loc ~env xr) in
    (res,env)

  | Ast.AppUnOp{op;a} -> 
    (* C[op] ~> op
       C[a](p) ~> (e,p') 
       -------------------------
       C[op a](p) ~> ((op e),p')      
    *)
    let op = rw_unop ~op in
    let (e,env) = rw_term ~env ~term:a in 
    let res = Target.AppUnOp{op;e} in
    (res,env)

  | Ast.AppBinOp{op;a1;a2} -> 
    (* C[op] ~> op
       C[a1](p) ~> (e1,p1)
       C[a2](p) ~> (e2,p2) 
       ---------------------------------
       C[a1 op a2](p) ~> ((e1 op e2),p2) *)
    let op = rw_binop ~op in
    let (e1,env) = rw_term ~env ~term:a1 in
    let (e2,env) = rw_term ~env ~term:a2 in 
    let res = Target.AppBinOp{op;e1;e2} in
    (res,env)

  | Ast.B_array {arr} ->
    (match arr with   

     | Ast.B_array_init (ranges,a) -> 
       let (e,env) = rw_term ~env ~term:a in
       let array_init =
         Target.OpenModuleIn{module_name="Array";
                             e=Name{x="init"}} in
       let (app,env) = 
         List.fold_left (fun (acc,env) range -> 
             match range with
             | Ast.Range_as_set _ -> (Printf.printf "todo\n" ;assert false)
             | Ast.Range_as_ident x -> 
               let ex = rw_ident_ren ~loc ~env (x,None) in 
               let e2= Target.(App{e=Name{x="snd"};args=[ex]}) in
               let f = Target.Fun{x="_";e=acc} in
               let app = Target.App{e=array_init;args=[e2;f]} in
               (app,env)

             | Ast.(Range_as_interval (AliasInterval _)) ->
               failwith "interval trop grand ..."

             | Ast.(Range_as_interval (Interval (a1,a2))) -> 
               let (e1,env) = rw_term ~env ~term:a1 in
               let (e2,env) = rw_term ~env ~term:a2 in 
               let f = Target.Fun{x="_";e=acc} in
               let app = Target.App{e=array_init;args=[e2;f]} in
               (app,env)) ((match e with 
             | Target.Literal _ -> e 
             | _ -> Target.Name{x="_tmp"}),env) ranges in
       let e = match e with 
         | Target.Literal _ -> app
         | _ -> Target.LetIn{x="_tmp";e1=e;e2=app} in
       (e,env)

     | Ast.B_array_ext {maplets} -> 
       let rec aux idxs = match idxs with 
         | [] -> assert false
         | []::_ -> []
         | _ -> 
           let mx = 1 + List.fold_left (fun acc idx ->
               match idx with 
               | [] -> assert false
               | Ast.{desc=Const{k=Int(Num s)}}::t -> max acc (int_of_string s)
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
           | [] -> [Target.ArrayCreate {es=List.rev acc}]
           | x::xs -> (match n with 
               | 0 -> Target.ArrayCreate{es=List.rev acc} :: (aux [] n0 l)
               | n -> aux (x::acc) (n-1) xs) in
         aux [] n0 l
       in

       let res = List.fold_left (fun acc mx -> group_by mx acc) es mxs in
       let res = match res with [e] -> e | _ -> assert false in
       res,env)

  | Ast.Array_access{xr;idxs} ->
    (* C[xr](p)  ~> (e,p1)
       C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (en,p')
       ----------------------------------------------------
       C[xr(a1,a2,...,an)] ~> (e.(e1).(e2).[...].(en),p'> *)
    let e = rw_ident_ren ~loc ~env xr in
    let (es,env) = rw_terms ~env ~terms:idxs in 
    let res = List.fold_left (fun e k -> Target.Array_access {e;k}) e es in
    (res,env)

  | Ast.Record_access{a;x} ->
    (* C[xr](p) ~> (e,p')
       w(x1) = z1
       w(x2) = z2
       ...
       w(xn) = zn
       -----------------------------------------------
       C[xr'x1'x2'...'xn)](p) ~> (e.z1.z2.[...].zn,p') *)
    let (e,env) = rw_term ~env ~term:a in
    (* normalize x... *)
    let res = Target.(GetField {e;x}) in
    (res,env)
  | Ast.Record_create {assocs} ->
    (* C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (en,p)

       env_add_record_declaration(p,[x1;x2;...;xn]) ~> p'
       ------------------------------------------------------------------
       C[rec(x1:e1,x2:e2,...,xn=en)](p1) ~> ({x1=e1;x2=e2;...;xn=en}, p') 
    *)
    let xs,ts = List.split assocs in
    let (es,env) = rw_terms ~env ~terms:ts in
    let assocs=List.combine xs es in
    let assocs=List.filter_map 
        (function 
            (None,_) -> None 
          | (Some x,e) -> Some (x,e)) assocs in
    let res = Target.(Record {assocs}) in
    let field_names = List.map fst assocs in
    let env = env_add_record_declaration ~env ~field_names in
    (res,env)
  | Ast.TermOfCondition {c} -> 
    (* C[c](p) ~> (e,p')
       ----------------------
       C[bool c](p) ~> (e,p') *)
    rw_condition ~env ~cond:c

and rw_comparator ~(op : Ast.comparator) : Target.binop = 
  Runtime.comparator_occur op; 
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
    let res = Target.AppBinOp {op;e1;e2} in
    (res,env)

  | Ast.Not {c} ->
    (* C[a](p) ~> (e,p') 
       --------------------------
       C[not a](p) ~> ((op e),p') *)
    let (e,env) = rw_condition ~env ~cond:c in
    let res = Target.AppUnOp {op=Target.Not;e} in
    (res,env)

  | Ast.Or {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       ---------------------------------
       C[c1 or c2](p) ~> ((e1 || e2),p2)  *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.AppBinOp {op=Target.Or;e1;e2} in
    (res,env)

  | Ast.And {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       --------------------------------
       C[c1 & c2](p) ~> ((e1 && e2),p2) *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.AppBinOp {op=Target.And;e1;e2} in
    (res,env)

(**   
     traduction d'un instruction 
*)

let rec rw_instruction ~(env : env) ~(inst : Ast.instruction)
  : (Target.exp * env) = 
  let Ast.{desc;loc} = inst in
  match desc with

  | Ast.Skip -> 
    (* 
       --------------------
       C[skip](p) ~> skip,p *)
    (Target.Skip,env)

  | Ast.Block{i} -> 
    rw_instruction ~env ~inst:i

  | Ast.Seq{i1;i2} -> 
    let e1,env = rw_instruction ~env ~inst:i1 in
    let e2,env = rw_instruction ~env ~inst:i2 in 
    let es = match e1,e2 with
      | Target.Seq{es=es1},Target.Seq{es=es2} -> es1@es2
      | Target.Seq{es=es1},e2 -> es1@[e2]
      | e1,Target.Seq{es=es2} -> e1::es2
      | _ -> [e1;e2] in
    (Target.Seq{es},env)

  | Ast.Var{xs;i} ->
    let variables0 = env.variables in

    let env = 
      let idents = List.map (fun Ast.{y} -> (y,None)) xs in 
      env_extends ~env ~vartype:Target.LV ~idents 
    in
    let e,env = rw_instruction ~env ~inst:i in
    let vars = List.map (function 
        | Ast.{y;ty} -> 
          (* (match ty0 with 
             |(Ast.Types.Alpha _) ->
             Printf.printf "warning : ne peut pas determiner 
             le type de %s...\nint par defaut ...\n\n" y; 
             (y,default_value Ast.Types.Int) (* hypothèse : si la variable 
             à le type alpha_n,  alors elle n'est pas utilisé dans le corps 
             du bloc var -> on peut la supprimer  *)
             | ty0 -> *)
          let x = Names.normalize_ident y in 
          (x,default_value ~env ~ty)) xs in
    let res = Target.Var {vars;e} in
    let env = {env with variables=variables0} in
    (* restaure *)
    (res,env)

  | Ast.Assign{xr;a} ->
    let e,env = rw_term ~env ~term:a in
    let (x,r) = xr in
    let res = match r with
      | None when is_constructor x ~env -> assert false     
      | _ -> (match List.assoc_opt xr env.variables,r with
          | None,_ -> err_unbound_value ~loc xr
          | Some LV,None
          | Some Arg_out,None ->
            let x = Names.normalize_ident x in  
            Target.(AppBinOp{op=SetRef;e1=Name{x};e2=e})
          | Some LV,_ 
          | Some Arg_out,_ -> assert false
          | Some _,None -> let att = Names.normalize_ident x in 
            Target.SetAtt{att;e}
          | Some _,Some(o::_) -> 
            failwith "pas le droit de modifier une variable\
                      \ d'une autre machine (sans passer par\
                      \ ses opérations propres)"
          | _ -> assert false (* à vérifier *) ) in
    (res,env)

  | Ast.Array_assign{xr;idxs;a=new_val} -> 
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
    let res = Target.Array_assign {xr;e;es;v} in
    (res,env)


  | Ast.Record_assign{xr;xs;a=new_val} -> 
    let e = rw_ident_ren ~loc ~env xr in
    let v,env = rw_term ~env ~term:new_val in 
    let xs = List.map Names.normalize_ident xs in
    let res = Target.SetField{e;xs;v} in
    (res,env)

  | Ast.While{c;i} -> 
    (* C[c](p) ~> (e,p') 
       C[i](p') ~> (i,p'') 
       ------------------------------------------------
       C[WHILE c DO i END] ~> ((while e do i done),p'') *)
    let c,env = rw_condition ~env ~cond:c in
    let e,env = rw_instruction ~env ~inst:i in
    let res = Target.While {c;e} in
    (res,env)

  | Ast.If{c0;i0;cases;others} -> 
    let c,env = rw_condition ~env ~cond:c0 in
    let e1,env = rw_instruction ~env ~inst:i0 in
    let m,env = 
      let e_else,env = match others with 
        | None -> Target.Skip,env
        | Some i -> rw_instruction ~env ~inst:i 
      in
      List.fold_left
        (fun (acc,env) (c1,i1) -> 
           let c,env = rw_condition ~env ~cond:c1 in
           let e1,env = rw_instruction ~env ~inst:i1 in
           (Target.If {c;e1;e2=acc},env))
        (e_else,env)
        cases 
    in
    let res = Target.If {c;e1;e2=m} in
    (res,env)

  | Ast.Case{a;cases;others} -> 
    let rw_case env (csts,i) = 
      let cs = List.map (fun k -> rw_constant ~k) csts in
      let e,env = rw_instruction ~env ~inst:i in
      ((cs,e),env) in
    let rw_cases env cases = 
      fold_with_env env rw_case cases in
    (* note : les literaux maxint et minint sont traduits vers des entiers, 
       et non des identificateurs (cf. rw_constant).
       Si ce n'était pas le cas, le code du case engendré serait erroné 
       (eg. (match n with max_int -> ... | ...) où max_int est une variable 
       "rammasse tout" et non un entier *)
    let others,env = match others with
      | None -> (None,env) 
      | Some inst -> 
        let e,env = rw_instruction ~env ~inst in 
        (Some e, env) 
    in
    let e,env = rw_term ~env ~term:a in
    let cases,env = rw_cases env cases in
    let res = Target.Case{e;cases; others} in
    (res,env)

  | Ast.Call ({outs;op;args} as ast) ->  
    (match List.assoc_opt op env.variables with 
     | Some(Target.OP) -> let es_args,env = rw_terms ~env ~terms:args in 
       let (m,r) = op in
       (match outs with 
        | [] -> let o = match r with 
            | None -> "self" 
            | Some (o::_) -> o 
            | _ -> assert false 
          in
          let m = Names.normalize_ident m in
          let o = Names.normalize_ident o in
          let call = Target.AppMth {o;m;args=es_args} in
          (call,env)
        | _ -> 
          let vs = List.mapi (fun i _ -> Printf.sprintf "v%d'" i) outs in
          let sets = List.map2 (fun Ast.{y=xr} v -> 
              let id = Ast.{loc;desc=Ast.Ident{xr=(v,None)}} in
              Ast.{loc;desc=Ast.Assign{xr;a=id}}) outs vs 
          in
          let call =
            Ast.{loc;desc=Ast.Call {ast with
                                    outs=[];
                                    args=List.map
                                        (fun x ->
                                           Ast.{loc;desc=Ast.MLIdent{x}})
                                        vs@args}}
          in
          let body =
            List.fold_left
              (fun acc set ->
                 Ast.{loc;desc=Ast.Seq{i1=acc;i2=set}}) call sets
          in 
          let var = Ast.{loc;
                         desc=Ast.Var {xs=List.map2
                                           (fun v {y;ty} -> Ast.{y=v;ty})
                                           vs outs;
                                       i=body}}
          in
          rw_instruction ~env ~inst:var)
     | Some (_) ->
       (* en principe, les cas d'erreurs ont été élimiés au typage *)
       Err.error_exit loc (Printf.sprintf "%s : This is not an operation;\
                                          \ it cannot be applied."
                             (Ast.string_of_ident_ren op))
     | None -> err_unbound_value ~loc op)

  | Ast.Assert{c;i} ->
    let c,env = rw_condition ~env ~cond:c in
    let e,env = rw_instruction ~env ~inst:i in
    let res = Target.Assert {c;e} in
    (res,env)

  | Ast.Print_int{a} -> 
    let e,env = rw_term ~env ~term:a in 
    let res = Target.Print_int{e} in 
    (res,env)

  | Ast.Print_type _ | Ast.Ill_typed _ -> (Target.Skip,env)
    (* noeuds produisant des affichages (debug) dans le typeur
       (transformé en skip) *)

type clause_result = { decls_before:Target.decl list;
                       class_local_decls:Target.class_local_decl list;
                       class_components:Target.class_component list;
                       env:env}

let rw_sees ~(env : env) ~(mchs : Ast.ident_ren list) = 
  let env =
    {env with current_sees=List.fold_left 
                            (fun sees (m,r) -> 
                               (List.filter_map (fun (xr,_) -> 
                                    (match xr with
                                     | (x,Some [m']) when m = m' ->
                                       Some ((x,None),m) 
                                     | _ -> None)) env.variables) @ sees) [] mchs 
                      } in
  { decls_before=[];
    class_local_decls=[];
    class_components=[];
    env }

let rw_sets ~(env : env) ~(component_name : Ast.ident) ~(sets : Ast.set list) = 
  let rec aux acc env = function
    | [] -> (List.rev acc,env)
    | set::xs -> (match set with 
        | Ast.SetIdent{x} -> aux acc env xs
        | Ast.DefSet{x;enum} -> 
          let m = Names.normalize_ident component_name in
          let type_name = m ^ "_" ^ x in
          let env = env_add_variant_type_declaration env (x,Some[m]) enum in
          aux (Target.TyVariantDecl{x=type_name;enum}::acc) env xs) in
  let acc,env = aux [] env sets in
  let res = Target.D_comment{s="sets"}  :: List.rev acc in
  { decls_before=res;
    class_local_decls=[];
    class_components=[];
    env }



let rw_inclusions ~(env : env)
    ~(mchs_init : (Ast.ident_ren * Ast.term list) list) = 
  (* Printf.printf "[DEBUG] Includes\n"; *)
  let mchs,params = List.split mchs_init in 
  let rec aux acc env = function
    | [] -> (List.rev acc, env) 
    | ts::r -> let es,env = rw_terms ~env ~terms:ts in
      aux (es::acc) env r in
  let params,env = aux [] env params in
  let mchs = List.combine mchs params in

  let env = 
    let variables = List.fold_left (fun variables (mchr,_) -> 
        (match mchr with 
         | (mch,prefix) ->
           let ext = List.filter_map (function 
               | ((x,Some [mch']),y) -> (* Printf.printf "====> %s\n" x; *)
                 if mch = mch' 
                 then (Some (match prefix with
                     | None -> ((x,None),y) 
                     | Some p -> ((x,Some p),y) ))
                 else None
               | _ -> None) variables in
           (ext@variables))) env.variables mchs_init in
    { env with variables } in
  let env = {env with current_inclusions = 
                       List.map (fun (xr,_) ->
                                   match xr with 
                                  | (_,Some(m::_)) -> m
                                  | (m,_) -> m) mchs_init @ env.current_inclusions}
  in
  (* inclusion sans renommage = héritage *)
  let mchs_inherit,mchs_ren =
    List.partition
      (function
        | ((x,None),_) -> true
        | _ -> false) mchs
  in
  let env = {env with current_mchs_ren = mchs_ren @ env.current_mchs_ren} in
  (* inclusion avec renommage = alias de classe r + let r = new r 
     (en dehors de la classe suivante + attribut r = new r (...), 
     + method r = r *)
  let mchs_ren =
    List.map
      (function
        | ((_,Some (r::_)),p) -> ((r,None),p)
        | _ -> assert false) mchs_ren
  in
   let res = [Target.Inherit{mchs=mchs_inherit}] in
  (* let res = List.map (fun (xr,parameters) -> 
    let o = match xr with 
            | (_,Some(o::_)) -> o
            | (o,_) -> o in
    let e = Target.App{e=Target.New{class_name=o};args=parameters} in
    Target.Attribute{x=o;e}) mchs_inherit in

  let res = res @ (List.map (fun ((r,_),args) -> 

      let e =
        match args with
        | [] -> Target.Name{x=r}
        | _ -> App{e=Name{x=r};args}
      in
      Target.Attribute{x=r;e}) mchs_ren) in*)
  let res = res @ (List.map (fun ((r,_),_) ->
      Target.Mth{m=r;local=false;args=[];body=Name{x=r}}) mchs_ren) in
  let res = Target.CC_comment{s="inclusion"} :: res in
  { decls_before=[];
    class_local_decls=[];
    class_components=res;
    env }

let rw_concrete_variables ~(env : env) ~(xs : Ast.ident_ren Ast.annot list) = 
  let atts,ms = List.split @@
    List.map (function 
        | Ast.{y=(x,None);ty} ->
          let x = normalize_ident x in
          let default=default_value ~env ~ty in
          (Target.MutableAttribute{x;default},
           Target.Mth{m=x;local=false;args=[];body=Name{x}})
        | _ -> assert false (* le renommage est possible d'après la grammaire,
                               mais quel est le comportement attendu ? *)
      ) xs in
  let res = atts @ ms in

  let res = Target.CC_comment{s="variables"} :: res in

  let env = 
    let idents=List.map (fun Ast.{y} -> y) xs in
    env_extends ~env ~vartype:Target.GV ~idents 
  in
  { decls_before=[];
    class_local_decls=[];
    class_components=res;
    env }

let rw_initialisationB0 ~env ~inst =
  (* Printf.printf "[DEBUG] InitialisationB0\n"; *)
  let i,env = rw_instruction ~env ~inst in
  let res = [Target.Init {i}] in
  let res = Target.CC_comment{s="initialisation"} :: res in
  { decls_before=[];
    class_local_decls=[];
    class_components=res;
    env }

let rw_concrete_constants ~(env : env) ~(cs : Ast.ident list) = 
  { decls_before=[];
    class_local_decls=[];
    class_components=[];
    env } (* cf. clauses values *)

let rw_operation ~(env : env) ~(ops : Ast.operationB0 Ast.loc list)
    ~(local:bool) =
  (* Printf.printf "[DEBUG] OperationsB0\n"; *)
  let env = 
    let idents=List.map (function Ast.{desc={h={name}}} -> name) ops in
    env_extends ~env ~vartype:Target.OP ~idents 
  in
  let rec aux acc env = function
    | [] -> (List.rev acc,env) 
    | Ast.{desc={h={return=outs;name;args};i}}::xs -> 

      (* ajout des arguments de l'opération à l'environnement *)
      let env_op = 
        let idents = List.map (fun Ast.{y} -> (y,None)) args in
        env_extends ~env ~vartype:Target.Arg_in ~idents 
      in 

      let env_op = 
        let idents = List.map (fun Ast.{y} -> (y,None)) outs in
        env_extends ~env:env_op ~vartype:Target.Arg_out ~idents 
      in

      let i,env_op = rw_instruction env_op i in

      let env = env_extends ~env ~vartype:Target.OP ~idents:[name] in
      let (m,r) = name in  (* que faire avec le renommage de l'op ?? *)
      assert (r = None);
      let m = normalize_ident m in
      let args = List.map (fun Ast.{y} -> normalize_ident y) args in
      let outs = List.map (fun Ast.{y} -> normalize_ident y) outs in
      aux (Target.Mth{m;local;args=outs@ args;body=i}::acc) env xs
  in
  let res,env = aux [] env ops in
  let res = Target.CC_comment{s="operations"} :: res in
  { decls_before=[];
    class_local_decls=[];
    class_components=res;
    env }



let rw_values ~(env : env) ~(bindings : Ast.bindings) = 
  (* Printf.printf "[DEBUG] Values\n"; *)
  (* remarque : ne detecte pas des constantes déclarées 
     dans la clause concrete_constants mais pas valuées. *)
  let rec aux acc1 acc2 env = function
    | [] -> 
      (List.rev acc1,List.rev acc2,env)
    | (x,v)::xs -> 
      let env = {env with current_constants = x::env.current_constants} in
      let e,env = match v with 
        | Ast.TermValue a -> rw_term ~env ~term:a
        | Ast.(IntervalValue (Interval (a1,a2))) ->
          let e1,env = rw_term ~env ~term:a1 in 
          let e2,env = rw_term ~env ~term:a2 in 
          (Target.Nuplet{es=[e1;e2]},env)
        | Ast.(IntervalValue (AliasInterval _)) ->
          (Printf.printf "todo\n";assert false)
      in
      let env = env_extends ~env ~vartype:Target.CST ~idents:[(x,None)] in
      let x = Names.normalize_ident x in
      let c = Target.ClassLetIn{x;e} in
      let vv = Target.Mth{m=x;local=false;args=[];body=Name{x}} in
      aux (c::acc1) (vv::acc2) env xs
  in
  let locdecls,res,env = aux [] [] env bindings in
  { decls_before=[];
    class_local_decls=Target.CLD_comment{s="constantes"} :: locdecls;
    class_components=res;
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
  | OperationsB0{ops;local} -> rw_operation ~env ~ops ~local
  | _ -> { decls_before=[]; class_local_decls=[]; class_components=[]; env }



let rw_component ~(env : env) ~(component : Ast.component)
  : (Target.decl list * env) = 

  match component with
  | Ast.{desc=Component {name=m;parameters;clauses=cs}} ->

    let env =
      env_extends ~env ~vartype:Target.Arg_in
        ~idents:(List.map (fun Ast.{y} -> (y,None)) parameters)
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
            (let rec aux (((m,non),_) as r) acc mchs_init = 
              assert (non = None);
              match mchs_init with
              | [] -> r,List.rev acc
              | (((m',None),_) as r')::tl ->
                if m = m' then aux r' acc tl
                else aux r (r'::acc) tl
              | r'::tl -> aux r (r'::acc) tl 
             in
             let rec aux2 = function
               | [] -> []
               | (((m,None),_) as r)::mchs_init -> 
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
    let {decls_before;class_local_decls;class_components;env} = List.fold_left 
        (fun {decls_before;class_local_decls;class_components;env} clause -> 
           match rw_clause ~env ~component_name:m ~clause with
           | {decls_before=db;class_local_decls=clocd;class_components=cp;env} -> 
             {decls_before=decls_before@db;
              class_local_decls=class_local_decls@clocd;
              class_components=class_components@cp;
              env}      
        ) {decls_before=[];class_local_decls=[];class_components=[];env} 
        cs in

    let ren_decl = 
      List.concat @@ 
      List.map 
        (function
          | ((_,Some (r1::x::_)),_)
          | ((x,Some (r1::_)),_) -> 
            let alias = normalize_ident r1 in
            let class_name = normalize_ident x in
            [ Target.ClassAliasDecl{alias;parameters=[];class_name};
              Target.Let{p=PVar alias;e=New{class_name=alias}} ]
          | _ -> assert false) 
        env.current_mchs_ren 
    in

    let class_name = normalize_ident m in
    let parameters = List.map (fun Ast.{y;ty} -> Ast.{y=normalize_ident y;ty}) parameters in 

    let class_mch = Target.ClassDecl{class_name;
                                     class_local_decls;
                                     parameters;
                                     class_components} in
    let new_mch = Target.Let{p=PVar class_name;
                             e=New{class_name}} 
    in
    let decls = ren_decl @ decls_before @ [class_mch;new_mch] in

    let env = {env with variables=List.map (fun (x,s) -> 
        let x = match x with 
            (y,None) -> (y,Some [m]) 
          | _ -> x 
        in (x,s)) env.variables} in

    let env = {env with current_sees = []; current_inclusions = []; current_constants = []; current_mchs_ren = []} in
    (decls,env)


let record_declarations ~(env : env) : Target.decl list =
  List.mapi (fun i rc ->    
      let bound_variables = List.map (fun _ -> Types.fresh_variable ()) rc in
      let name = "r" ^ string_of_int i in
      let fields = List.map2 (fun x n ->
          let ty = Types.Alpha n in
          Target.RecordField{x;ty;mutability=true}) rc bound_variables in
      Target.TyRecordDecl {bound_variables;name;fields})
    env.record_decls

let rw_program ~(components:Ast.component list) : Target.decl list = 
  let compile (acc,env) component =
    let decls,env = rw_component ~env ~component in
    (acc @ decls,env)
  in
  let decls, env = List.fold_left compile ([],init_env) components in
  record_declarations ~env @ decls


let translate ~(components:Ast.component list) : string =
  rw_program ~components |> Pprint.print_decls
