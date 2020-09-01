open Names

module Target = Fun_ast

type name = string

type env = {record_decls:(name list) list; (* liste de noms de champs de chaque record *)
            variables:(Ast.ident_ren * (Target.vartype * int)) list;
            env_size:int;
            constructors:name list;
            check_list:string list}

let init_env = {record_decls=[];
                variables=[];
                env_size=0;
                constructors=[];
                check_list=[]}

let sptf = Printf.sprintf 

let env_extends ~env vartype xs = 
  let len = List.length xs in
  {env with 
   env_size=env.env_size+len;
   variables=(List.mapi (fun i x -> (x,(vartype,env.env_size+i))) xs)@env.variables}

let env_extends_record_decls ~env xs = 
  (*  2 cas :
      i)
      pour tout x, p[x] <> ({x1:'a1;x2:'a2;xn:'an},_)
      p[fake := (Constr,{x1:'a1;x2:'a2;xn:'an})] ~> p'
      ------------------------------------------------
      env_extends_record_decls(p,[x1;x2;...;xn]) ~> p' 
      
      ii)
      p[fake] = (Constr,{x1:'a1;x2:'a2;xn:'an})
      -----------------------------------------------
      env_extends_record_decls(p,[x1;x2;...;xn]) ~> p
      
  *)
  let xs = List.sort compare xs in
  if List.mem xs env.record_decls  (* xs' dans env.record_decls  déjà triés par construction *)
  then env 
  else {env with record_decls=xs::env.record_decls}


(* let err_unbound_value loc xr =
  let s = "foo" in
  Err.error_exit loc (sptf "Unbound value %s" s
*)

let rw_ident_ren env xr = 
  match List.assoc_opt xr env.variables with
  | None -> failwith "unbound variable ...."
  | Some (vartype,i) -> 
    let k = env.env_size-i-1 in Target.Access {k;vartype}

let rw_constant = function
  | Ast.Int m -> Target.Int (match m with 
                             | Ast.Num n -> n
                             | Ast.Max_int -> string_of_int max_int
                             | Ast.Min_int -> string_of_int min_int)
  | Ast.Bool b -> Target.Bool b
  | Ast.String s -> Target.String s

let rw_unop (op : Ast.unop) : Target.unop = 
  match op with
  | Ast.Uminus -> Target.Neg
  | Ast.Succ -> Target.Succ
  | Ast.Pred -> Target.Pred

let rw_binop (op : Ast.binop) : Target.binop = 
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

let rec rw_terms ~(env : env) ~(terms : Ast.term list) = 
  fold_with_env env (fun env a -> rw_term ~env ~term:a) terms

and rw_term ~(env : env) ~(term : Ast.term) : (Target.exp * env) =
  let Ast.{desc;loc} = term in
  match desc with
  | Ast.Const {k} -> 
    (* 
       ----------------
       C[k](p) ~> (k,p)    
     *)
    let k = rw_constant k in
    let res = Target.Literal {k} in
    (res,env)
  
  | Ast.MLIdent _ -> assert false (* noeud privé utilisé dans la version objets du traducteur *)
  | Ast.Ident {xr} ->
    (* 2 cas :
       i)
       xr un constructeur constant déjà défini
       -----------
       C[xr] ~> w_capitalize(zr)
       
       ii)
       Supposons que xr est à l'emplacement k (indice de Debrun) dans la mémoire s.
       Sans perte de généralité, posons k = 3.
       ------------------------------
       C[xr] ~> M.fetch s.pop.pop.pop     (ie. k fois pop)

      avec M = 
        - Gv si xr est une variable globale
        - Lv si xr est une variable locale
        - Arg_in si xr est un paramètre d'entrée d'opération
        - Arg_out si xr est un paramètre de sortie d'opération
        - Cst si xr est une constante

      Notez-bien : l'occurence de la variable s est libre. 
      Elle sera liée à l'état mémoire courant (cf. Fun_ast.ctx_exp)
    *)
    (match xr with
    | (x,None) when List.mem x env.constructors ->  (* normalize ident with upercase ! *)
                  (Target.Literal {k=Variant x},env)
    | _ -> let res = rw_ident_ren env xr in 
           (res,env))
  
  | Ast.AppUnOp{op;a} -> 
    (* C[op] ~> op
       C[a](p) ~> (e,p') 
       -------------------------
       C[op a](p) ~> ((op e),p')      
     *)
    let op = rw_unop op in
    let (e,env) = rw_term ~env ~term:a in 
    let res = Target.AppUnOp{op;e} in
    (res,env)
  
  | Ast.AppBinOp{op;a1;a2} -> 
    (* C[op] ~> op
       C[a1](p) ~> (e1,p1)
       C[a2](p) ~> (e2,p2) 
       ---------------------------------
       C[a1 op a2](p) ~> ((e1 op e2),p2) 
     *)
    let op = rw_binop op in
    let (e1,env) = rw_term ~env ~term:a1 in
    let (e2,env) = rw_term ~env ~term:a2 in 
    let res = Target.AppBinOp{op;e1;e2} in
    (res,env)
  
  | Ast.B_array {arr} ->
    (match arr with   
     | Ast.B_array_init (xs,a) -> failwith "todo"
     | Ast.B_array_ext {maplets} -> 
       let assocs = 
         List.map (fun (ks,v) -> 
             let (es,env) = rw_terms ~env ~terms:ks in
             let (ev,env) = rw_term ~env ~term:v in
             (Target.Nuplet {es},ev)) maplets in
       let res = Target.(AList {assocs}) in
       (res,env))

  | Ast.Array_access{xr;idxs} ->
    (* C[xr](p)  ~> (e,p1)
       C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (en,p')
       ----------------------------------------------------
       C[xr(a1,a2,...,an)] ~> ((assoc e (e1,e2,...,en)),p') 
    *)
    let e = rw_ident_ren env xr in
    let (es,env) = rw_terms ~env ~terms:idxs in 
    let res = Target.(Assoc {e;k=Nuplet {es}}
    ) in
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

       env_extends_record_decls(p,[x1;x2;...;xn]) ~> p'
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
    let xs = List.map fst assocs in
    let env = env_extends_record_decls ~env xs in
    (res,env)
  | Ast.TermOfCondition {c} -> 
    (* C[c](p) ~> (e,p')
       ----------------------
       C[bool c](p) ~> (e,p') *)
    rw_condition ~env ~cond:c

and rw_comparator op = 
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
       C[c1 op c2](p) ~> ((e1 op e2),p2) 
     *)
    let op = rw_comparator op in
    let (e1,env) = rw_term ~env ~term:a1 in
    let (e2,env) = rw_term ~env ~term:a2 in  
    let res = Target.AppBinOp {op;e1;e2} in
    (res,env)
  
  | Ast.Not {c} ->
    (* C[a](p) ~> (e,p') 
       --------------------------
       C[not a](p) ~> ((op e),p') 
     *)
    let (e,env) = rw_condition ~env ~cond:c in
    let res = Target.AppUnOp {op=Target.Not;e} in
    (res,env)
  
  | Ast.Or {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       ---------------------------------
       C[c1 or c2](p) ~> ((e1 || e2),p2) 
     *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.AppBinOp {op=Target.Or;e1;e2} in
    (res,env)
  
  | Ast.And {c1;c2} ->
    (* C[c1](p) ~> (e1,p1)
       C[c2](p) ~> (e2,p2) 
       --------------------------------
       C[c1 & c2](p) ~> ((e1 && e2),p2) 
     *)
    let (e1,env) = rw_condition ~env ~cond:c1 in
    let (e2,env) = rw_condition ~env ~cond:c2 in 
    let res = Target.AppBinOp {op=Target.And;e1;e2} in
    (res,env)

(**   
     traduction d'un instruction 
*)

let set_variable ?constant_not_assignable_err (* constantes et opérateurs *)
                 (env : env)
                 (xr : Ast.ident_ren) 
                 (e : Target.exp) 
                 loc =
  let (vartype, k) = 
    match List.assoc_opt xr env.variables with 
    | None -> Err.error_exit loc "Unbound value ..........."
    | Some(vartype,i) -> (match vartype with
                          | Target.LV 
                          | Target.GV 
                          | Target.Arg_in
                          | Target.Arg_out -> (vartype, env.env_size - i - 1)
                          | Target.CST
                          | Target.OP -> Err.error_exit loc (match constant_not_assignable_err with 
                                                            | None -> "constant not assignable"
                                        | Some msg ->  msg))
  in
  Target.(Assign {k;v=Exp{e};vartype})

let rec rw_instruction ~(env : env) ~(inst : Ast.instruction) : (Target.inst * env) = 
   let Ast.{desc;loc} = inst in
  match desc with
  
  | Ast.Skip -> 
    (* 
       --------------------
       C[skip](p) ~> skip,p
     *)
  (Target.Skip,env)
  
  | Ast.Block{i} -> 
    (* C[i](p) ~> (i,p') 
       ---------------------------
       C[BEGIN I END](p) ~> (i,p') 
     *)
    rw_instruction ~env ~inst:i
  
  | Ast.Seq{i1;i2} -> 
    (* C[I1](p) ~> (i1,p1)
       C[I2](p1) ~> (i2,p2)
       ...
       C[IN](p(n-1)) ~> (i2,pn)
       ----------------------------------------
       C[I1;I2](p) ~> ((i1 $ i2 $ ... $ in),pn)
    *)
    let i1,env = rw_instruction ~env ~inst:i1 in
    let i2,env = rw_instruction ~env ~inst:i2 in 
    let is = match i1,i2 with
    | Target.Seq{is=is1},Target.Seq{is=is2} -> is1@is2
    | Target.Seq{is=is1},i2 -> is1@[i2]
    | i1,Target.Seq{is=is2} -> i1::is2
    | _ -> [i1;i2] in
    (Target.Seq{is},env)
  
  | Ast.Var{xs;i} ->
    (* env_extends(p,vartype,[x1;x2;...;xn])
         p[x1 := (k,vartype);
           x2 := (k+2,LV);
           ...
           xn := (k+n,LV)] 
       --------------------------------------------------------------------
       C[VAR x1,x2,...xn IN I](p) ~> C[i](env_extends(p,LV,[x1;x2;...;xn]))
    *)
    let xs = List.map (function Ast.{y} -> y) xs in (* ignore l'annotation de type *)
    let env_size0 = env.env_size in
    let variables0 = env.variables in
    let frame_size = List.length xs in
    let env = env_extends ~env Target.LV (List.map (fun x -> (x,None)) xs) in
    let i,env = rw_instruction ~env ~inst:i in
    let res = Target.Var {frame_size;i} in
    let env = {env with env_size=env_size0; variables=variables0} in (* restaure *)
    (res,env)

  | Ast.Assign{xr;a} ->
    (* C[a](p) ~> e,p'
       index(xr,p) = n. Sans perte de généralité, posons n = 3.
       ----------------------------------------------------------------------------
       C[xr := a](p) ~> ((assign (fun s -> e) (update (update (update M.set)))),p') 
                                              (ie. k update imbriqués)
             avec M = 
              - Gv si xr est une variable globale
              - Lv si xr est une variable locale
              - Arg_in si xr est un paramètre d'entrée d'opération
              - Arg_out si xr est un paramètre de sortie d'opération

     *)
    let e,env = rw_term ~env ~term:a in
    let res = set_variable 
                   ~constant_not_assignable_err: 
                      "constant are not_assignable from a clause initialisation"
                   env xr e loc in 
    (res,env)

  | Ast.Array_assign{xr;idxs;a=new_val} -> 
    (* 
       index(xr,p) = n
       C[a](p) ~> (v,p1) 
       C[a1](p1) ~> (e1,p2)
       C[a2](p2) ~> (e2,p3)
       ...
       C[an](pn) ~> (e1,p')
       --------------------------------------------------------------------------------
       C[xr(a1,a2,...,an) := a](p1) ~> C[xr := u] avec C[u](p') ~> (acons (e1,e2,e3) v)
    *)
    let v,env = rw_term ~env ~term:new_val in 
    let e = rw_ident_ren env xr in
    let es,env = rw_terms ~env ~terms:idxs in
    let e = Target.(Acons {e;k=Nuplet {es};v}) in
    let res = set_variable
                  ~constant_not_assignable_err: 
                       "element of a constant array is not assignable"
                  env xr e loc 
    in 
    (res,env)


  | Ast.Record_assign{xr;xs;a=new_val} -> 
    (* C[a](p) ~> (e,p')
       -----------------
       C[xr'x1'x2'(...)'xn := a](p) ~> C[xr := u]           

             avec C[u] ~> (let y0 = C[xr] in 
                           {y0 with x1={y0.x1 
                                        with x2={y0.x2 
                                                ...
                                                    with xn=a}} ...}) *)

    let updates e xs = 
      (* [updates e [x1;x2;x3]] ~> [ [(fun v -> `[~e.x1.x2 with x3 = ~v]);
                                      (fun v -> `[~e.x1 with x2 = ~v]);
                                      (fun v -> `[~e with x1 = ~v]) ] ]  *)
      let rec aux e acc = function 
       | [] -> acc
       | x::xs -> let update v = Target.UpdateField{e;x;v} in 
                  aux (Target.GetField{e;x}) (update::acc) xs in
      aux e [] xs 
    in

    let y0 = 0 in
    (* comme l'accès à [xr] en mémoire est en général coûteux,
       on lie [xr] au nom [y0] pour pouvoir le réutiliser *) 

    let xs = List.map normalize_ident xs in
    let v,env = rw_term ~env ~term:new_val in

    let e1 = rw_ident_ren env xr in
    let e2 = List.fold_left (|>) v (updates (Target.Name{n=y0}) xs) in
    let e = Target.Let {n=y0;e1;e2} in 

    let res = set_variable 
                ~constant_not_assignable_err:"record field of a constant is not assignable" 
                env xr e loc
    in
    (res,env)

  | Ast.While{c;i} -> 
    (* C[c](p) ~> (e,p') 
       C[i](p') ~> (i,p'') 
       -------------------------------------------
       C[WHILE c DO i END] ~> ((while_do e i),p'')
    *)
    let ec,env = rw_condition ~env ~cond:c in
    let ei,env = rw_instruction ~env ~inst:i in
    let res = Target.While {c=Target.Exp{e=ec}; i=ei} in
    (res,env)

  | Ast.If{c0;i0;cases;others} -> 
    let ec0,env = rw_condition ~env ~cond:c0 in
    let e0,env = rw_instruction ~env ~inst:i0 in
    let m,env = 
      let e_else,env = match others with 
        | None -> Target.Skip,env
        | Some i -> rw_instruction ~env ~inst:i 
      in
      List.fold_left
        (fun (acc,env) (c1,i1) -> 
           let ec1,env = rw_condition ~env ~cond:c1 in
           let e1,env = rw_instruction ~env ~inst:i1 in
           (Target.If {c=Target.Exp{e=ec1};i1=e1;i2=acc},env))
        (e_else,env)
        cases 
    in
    let res = Target.If {c=Target.Exp{e=ec0};i1=e0;i2=m} in
    (res,env)
   
  | Ast.Case{a;cases;others} -> 
    let rw_case env (csts,i) = 
      let cs = List.map rw_constant csts in
      let i,env = rw_instruction ~env ~inst:i in
      ((cs,i),env) in
      let rw_cases env cases = 
        fold_with_env env rw_case cases in
     (* note : les literaux maxint et minint sont traduits vers des entiers, 
        et non des identificateurs (cf. rw_constant).
        Si ce n'était pas le cas, le code du case engendré serait erroné 
       (eg. (match n with max_int -> ... | ...) où max_int est une variable 
        "rammasse tout" et non un entier *)
    let others,env = match others with
                 | None -> (None,env) 
                 | Some i -> let i,env = rw_instruction ~env ~inst:i in (Some i, env) in
    let e,env = rw_term ~env ~term:a in
    let cases,env = rw_cases env cases in
    let res = Target.Case{e=Exp{e};cases; others} in
    (res,env)

  | Ast.Call {outs;op;args} -> 
    let outs = List.map (fun Ast.{y} -> y) outs in
    (match List.assoc_opt op env.variables with 
    | Some(Target.OP,k) -> let args,env = rw_terms ~env ~terms:args in 
                            let op = env.env_size - k - 1 in
                            let call = Target.Call {op;args} in
                            let is = List.mapi 
                                         (fun k xr -> 
                                            let e_get = Target.Access{k=op+k+1;vartype=Target.Arg_out} in 
                                            set_variable env xr e_get loc)
                                          outs in
                            let res = Target.Seq{is=call::is} in
                            (res,env)
    | Some (_,k) -> Err.error_exit loc (sptf "%s : This is not a function; it cannot be applied." "varTOTO")
    | None -> Err.error_exit loc (sptf "Unbound value %s" "varTOTO"))

  | Ast.Assert{c;i} ->
    (* C[c](p) ~> (e,p1)
       C[i](p') ~> (i,p'')
       ------------------------------------------------------------
       C[ASSERT c THEN i](p)] ~> ((fun s -> assert (e s); i s),p'') *)
    let e1,env = rw_condition ~env ~cond:c in
    let i,env = rw_instruction ~env ~inst:i in
    let res = Target.Assert {c=Target.Exp{e=e1};i} in
    (res,env)

  | Ast.Print_int{a} -> 
    (* C[a](p) ~> (e,p') 
       ---------------------------------------------------------
       C[#print_int a](p) ~> ((trace (fun s -> print_int e)),p') *)
    let e,env = rw_term ~env ~term:a in 
    let res = Target.Print_int{e} in 
    (res,env)

  | Ast.Print_type _ | Ast.Ill_typed _ -> assert false 
  (* noeuds éliminés lors du typage (transformé en skip) *)

let add_check_list env name = 
  {env with check_list = name::env.check_list}

let rw_values env xs pp = 
  (* remarque : ne detecte pas des constantes déclarées dans la clause concrete_constants (resp. abstract) 
     mais pas valuées. *)
  let rec aux acc env = function
  | [] -> (* let i = match acc with [] -> Target.Skip | [i] -> i | l -> (Target.Seq{is=List.rev l}) in *)
           (List.rev acc,env)
  | (x,Ast.TermValue a)::xs -> let e,env = rw_term ~env ~term:a in 
                               let env = env_extends ~env Target.CST [(x,None)] in
                                let env_size = env.env_size in
                                let k = env_size-0-1 in
                                let vv = (k,Target.Exp{e}) (* Target.(Set {k;v=Target.Exp{e};vartype=CST}) *) in
                                aux (vv::acc) env xs 
  | _ -> failwith "todo"  
    in
   aux [] env xs

let rw_clause env m clause =
  let Ast.{desc;loc} = clause in
  match desc with
  | Ast.Sets{sets} ->
    let rec aux acc env = function
    | [] -> (List.rev acc,env)
    | set::xs -> (match set with 
                 | Ast.SetIdent{x} -> aux acc env xs
                 | Ast.DefSet{x;enum} -> aux (Target.TyVariantDecl{x;enum}::acc) {env with constructors = enum @ env.constructors} xs) in
    aux [] env sets
  | Ast.Concrete_variables {xs} -> 
    let xs = List.map (fun Ast.{y} -> y) xs in 
    let frame_size = List.length xs in
    let name = sptf "variables_%s" m in 
    let env = {env with check_list = name::env.check_list} in
    let res = [Target.Decl {name;c=Variables {frame_size}}] in (*{nb_gv=env.nb_gv+frame_size;frame_size}}] in ?? *)
    let env = env_extends ~env Target.GV xs in
    (res,env)
  | Ast.InitialisationB0 {i} -> let i,env = rw_instruction ~env ~inst:i in
                                  let name = sptf "initialisation_%s" m in
                                  let env = add_check_list env name in
                                  let res = [Target.Decl {name;c=Target.Initialisation{i}}] in
                                  (res,env)
  
  
   | Ast.Concrete_constants _ -> ([],env)
    (*let frame_size = List.length cs in 
    (* let name=sptf "constants_%s" m in
     let env = add_check_list env name in *)
    let res = [(* Target.Decl {name;c=Constantes {frame_size}}*)] in (*{nb_gv=env.nb_gv+frame_size;frame_size}}] in ?? *)
    let env = env_extends env Target.CST (List.map (fun x -> (x,None)) cs) in
    (res,env)*)
  | Ast.Values {bindings} ->  let bindings,env = rw_values env bindings loc in
                          let name = sptf "values_%s" m in
                          let env = add_check_list env name in
                          let res = [Target.Decl {name;c=Target.Values{bindings}}] in
                          (res,env)

  | OperationsB0{ops} -> 
     (* let env = env_extends ~env Target.OP (List.map (function Ast.{h={name}} -> name) ops) in *)
     let rec aux k acc env = function
     | [] -> (List.rev acc,env) 
     | Ast.{desc={h={return=outs;name;args};i}}::xs -> 
       (* ajout des arguments de l'opération à l'environnement *)
       let args = List.map (function Ast.{y} -> y) args in (* ignore l'annotation de type *)
       let outs = List.map (function Ast.{y} -> y) outs in (* ignore l'annotation de type *)
       let nb_outs = List.length outs in
       let env = env_extends ~env Target.Arg_out (List.map (fun x -> (x,None)) outs) in
       let env_op = env_extends ~env Target.Arg_in (List.map (fun x -> (x,None)) args) in 
       let i,env_op = rw_instruction ~env:env_op ~inst:i in
       let nb_args = List.length args in
       let i,env_op = let rec aux2 i env_op = function 
                        0 -> (i,env_op)
                      | n -> let k = n - 1 in aux2 (Target.Arg{k;i}) env_op k
                      in aux2 i env_op nb_args in

       let env = env_extends ~env Target.OP [name] in
      
       aux (k+1+nb_outs) (Target.{op=k;nb_args;nb_out=nb_outs;i}::acc) env xs 
    in
    let ops,env = aux 0 [] env ops in
    let name = sptf "operations_%s" m in
    let env = add_check_list env name in
    let res = [Target.Decl {name;c=Target.Operations{ops}}] in
    (res,env) 
  | Inclusion{mchs_init} -> 
    let variables = List.fold_left (fun variables (xr,parameters) -> match xr with 
                | (m,Some _) -> failwith "renommage pas supporté"
                | (m,None) -> let ext = List.filter_map 
                               (function ((x,Some [m']),vartype) -> if m = m' then Some ((x,None),vartype) else None
                                | _ -> None) variables in
                               (ext@variables)) env.variables mchs_init in
    let env = {env with variables} in
    ([],env)
(*
    si pas de renommage, on s'en sort simplement en modifiant l'environnement :
       include m --> pour tout object v = (m',x), si m = m' alors v := (None,x) 
  *)
  | _ -> ([],env)




let rw_component ~(env : env) ~(component : Ast.component) : (Target.decl list * env) = 

  match component with
  | Ast.{desc=Component {name=m;parameters;clauses=cs}} ->
    if parameters <> [] then failwith "pas suporté........." else
    (* partage ok d'une machine à l'autre ? ça semble ok *)
    let env = (* rafinement *)
      let l = List.filter (function ((x,(Some [m'])),s) -> m = m' | _ -> false) env.variables in
      {env with variables = (List.map (fun ((x,_),s) -> ((x,None),s)) l) @ env.variables} 
    in

    let (env,decls) = List.fold_left 
        (fun (env,ds) c -> 
           match rw_clause env m c with
           | ([],env') -> (env',ds)
           | (ds',env') -> (env',ds@ds')       
        ) (env,[]) cs in
(*
    List.iter (fun d -> r := !r ^ (Fun_pprint.print_decl d |> Printf.sprintf "%s\n")) ds; *)
    let env = {env with variables=List.map (fun (x,s) -> 
                                              let x = match x with 
                                                       (y,None) -> (y,Some [m]) 
                                                      | _ -> x 
                                              in (x,s)) env.variables} in
    (decls,env)



let record_declarations ~(env : env) : Target.decl list = 
  (* nb : copier-coller de Obj_translate, excepté la mutabilité du champs de record *) 
    List.mapi (fun i rc ->    
        let bound_variables = List.map (fun _ -> Types.fresh_variable ()) rc in
        let name = "r" ^ string_of_int i in
        let fields = List.map2 (fun x v ->
                       let ty = Types.Alpha v in
                       Target.RecordField{x;ty}) rc bound_variables in
        Target.TyRecordDecl {bound_variables;name;fields})
        env.record_decls


let rw_program ~(components:Ast.component list) : Target.decl list = 
  let compile (acc,env) component =
    let decls,env = rw_component ~env ~component in
    (acc @ decls,env)
  in
  let decls, env = List.fold_left compile ([],init_env) components in
  let main = Target.Main{compositions=List.rev env.check_list} in
  record_declarations ~env @ decls @ [main]

let translate ~(components:Ast.component list) : string =
  rw_program ~components |> Fun_pprint.print_decls


