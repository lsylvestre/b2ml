(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* typage de B0 *)

module Typing = struct

  type contexte = (Ast.ident_ren * Types.t) list

  let printEnvTy envTy = 
    List.iter
      (fun (xr,ty) ->
         Printf.printf "(%s:%s)\n"
           (Ast.string_of_ident_ren xr)
           (Types.printTy ty))
      envTy

  let typeVar envTy xr loc = 
    match List.assoc_opt xr envTy with
    | None ->
      Err.error_exit loc @@
      Printf.sprintf "Unbound value %s." @@
      Ast.string_of_ident_ren xr
    | Some Types.(T_alpha {contents=(Instanciated ty)}) -> ty
    | Some ty -> ty

  let typConstant k = 
    let open Ast in match k with
    | C_int _ -> Types.T_int
    | C_bool _ -> Types.T_bool
    | C_string _ -> Types.T_string

  let add_field ~loc ty x =
    let open Ast in
    match ty with
      Types.T_alpha v -> 
      let v' = Types.fresh_variable () in
      v := Types.(Instanciated (T_struct(ref {fields=[x,T_alpha v'];row=true})))
    | Types.T_struct ({contents={fields;row}} as r) -> 
      (match List.assoc_opt x fields with
       | Some _ -> ()
       | None ->
         r := let v = Types.fresh_variable () in
           {fields=[x,T_alpha v];row=true})
    | _ -> Types.(unification_failure ~loc ty
                    (T_struct (ref {fields=[];row=true})))

  let rec typTerm (envTy : contexte) (a:Ast.term) : Types.t = 
    let open Ast in
    let {desc;loc} = a in
    match desc with
    | A_const{k} -> typConstant k
    | A_ident{xr} -> typeVar envTy xr loc
    | A_array{arr} -> 
      (match arr with 
       | B_array_init(idxs,a) ->
         let tya = typTerm envTy a in
         Types.(T_pow{ty=T_tuple{tys=[(match idxs with 
             | idx::idxs -> List.fold_left (fun acc _ -> 
                 T_tuple{tys=[acc;T_int]}) T_int idxs
             | _ -> assert false);
            tya]}}) (* pas complet *)

       | B_array_ext{maplets} -> 
         (match maplets with 
          | [] -> assert false (* cf grammaire *)
          | (idxs,a)::maplets ->
            let tya = typTerm envTy a in
            let ty = Types.T_tuple{tys=[(match idxs with 
                | [] -> assert false
                | idx::idxs -> 
                  let ty0 = typTerm envTy idx in
                  Types.unify ~loc T_int ty0;
                  List.fold_left 
                    (fun acc idx -> 
                       Types.unify ~loc T_int (typTerm envTy idx);
                       Types.T_tuple{tys=[acc;typTerm envTy idx]}) ty0 idxs);tya]}
            in
            List.iter (fun (idx,a) -> 
                let tya = typTerm envTy a in
                Types.unify ~loc ty (Types.T_tuple{tys=[(match idxs with 
                    | [] -> assert false
                    | idx::idxs -> 
                      let ty0 = typTerm envTy idx in
                      Types.unify ~loc T_int ty0;
                      List.fold_left 
                        (fun acc idx -> 
                           Types.unify ~loc T_int (typTerm envTy idx);
                           Types.T_tuple{tys=[acc;typTerm envTy idx]}) ty0 idxs);tya]})
              )maplets;
            Types.T_pow{ty}))


    | A_app (* A_array_access *) {xr={y;ty};idxs} -> 
      let ty' = typeVar envTy y loc in
       Types.unify ~loc ty ty';
      (match ty' with
        | Types.T_arrow{tyArgs;ty} -> 
         Types.unify ~loc (Types.T_tuple{tys=tyArgs})
                 (Types.T_tuple{tys=(List.map (typTerm envTy) idxs)});
         ty
       | Types.T_pow{ty=Types.T_tuple{tys=[tyidxs;ty0]}} -> 
         Types.unify ~loc tyidxs (match idxs with 
             | [] -> assert false
             | idx::idxs -> 
               (List.fold_left
                  (fun acc idx ->
                     Types.T_tuple{tys=[acc;(typTerm envTy idx)]})
                  (typTerm envTy idx) idxs));
         ty0
       | ty -> let a = Types.(T_alpha (fresh_variable ())) in
         let b = Types.(T_alpha (fresh_variable ())) in
         let ty' = Types.T_pow{ty=Types.T_tuple{tys=[a;b]}} in
         Types.unification_failure ~loc ty ty')
    | A_record_access{a;x} -> 
      let ty = typTerm envTy a in 
      add_field ~loc ty x; 
      (match Types.shorten ty with
       | Types.T_struct {contents={fields}} -> 
         (match List.assoc_opt x fields with 
          | None -> Types.(unification_failure ~loc ty
                             (let v = Types.(T_alpha (fresh_variable ())) in 
                              T_struct (ref {fields=[x,v];row=true})))
          | Some ty -> ty)
       | _ -> Types.(unification_failure ~loc ty
                       (let v = Types.(T_alpha (fresh_variable ())) in 
                        T_struct (ref {fields=[x,v];row=true}))))
    | A_record_create{assocs} -> 
      let assocs = List.mapi (fun i (xopt,a) ->
          match xopt with 
          | None -> ("__fake__"^string_of_int i,a) 
          | Some x -> (x,a)) assocs 
      in
      let assocs = List.sort (fun (x,a) (x',a') -> compare a a') assocs in
      let fields = List.map (fun (x,a) -> (x,typTerm envTy a)) assocs in
      Types.(T_struct(ref {fields;row=false}))
    | A_app_unop{op=Uminus;a}
    | A_app_unop{op=Succ;a}
    | A_app_unop{op=Pred;a} -> 
      Types.unify ~loc Types.T_int (typTerm envTy a);
      Types.T_int
    | A_app_binop{op=Add;a1;a2} 
    | A_app_binop{op=Sub;a1;a2} 
    | A_app_binop{op=Mul;a1;a2}
    | A_app_binop{op=Div;a1;a2} 
    | A_app_binop{op=Pow;a1;a2}
    | A_app_binop{op=Mod;a1;a2} -> 
      Types.unify ~loc Types.T_int (typTerm envTy a1);
      Types.unify ~loc Types.T_int (typTerm envTy a2);
      Types.T_int
    | A_Range{a1;a2} -> 
      Types.T_range
    | A_of_condition{c} -> 
      Types.unify ~loc Types.T_bool (typCondition envTy c);
      Types.T_bool

  and typCondition (envTy : contexte) (c : Ast.condition) : Types.t = 
    let open Ast in
    let {desc;loc} = c in
    match desc with
    | True -> Types.T_bool
    | Compare{op=Eq;a1;a2}
    | Compare{op=Neq;a1;a2} -> 
      let ty1 = typTerm envTy a1 in
      let ty2 = typTerm envTy a2 in
      Types.unify ~loc ty1 ty2;
      Types.T_bool

    | Compare{op=Lt;a1;a2}
    | Compare{op=Gt;a1;a2}
    | Compare{op=Le;a1;a2}
    | Compare{op=Ge;a1;a2} -> 
      Types.unify ~loc Types.T_int (typTerm envTy a1);
      Types.unify ~loc Types.T_int (typTerm envTy a2);
      Types.T_bool

    | And{c1;c2}
    | Or{c1;c2} -> 
      let ty1 = typCondition envTy c1 in
      let ty2 = typCondition envTy c2 in
      Types.unify ~loc ty1 ty2;
      Types.T_bool
    | Not{c} -> 
      Types.unify ~loc Types.T_int (typCondition envTy c);
      Types.T_bool

  let rec typInst (envTy : contexte) (i : Ast.instruction) : Types.t = 
    let open Ast in
    let {desc;loc} = i in
    match desc with
    | I_skip -> Types.T_unit

    | I_assign{xr;a} -> 
      let ty1 = typeVar envTy xr loc in
      let ty2 = typTerm envTy a in
      Types.unify ~loc ty1 ty2;
      Types.T_unit

    | I_record_assign{xr;xs;a} -> 
      let ty_record = typeVar envTy xr loc in
      let ty_value = typTerm envTy a in
      let tyCase = List.fold_left 
          (fun ty x ->
             add_field ~loc ty x;
             let ty = match ty with
               | Types.(T_alpha{contents=Instanciated ty}) -> ty
               | ty -> ty in
             match ty with 
             | Types.T_struct{contents={fields}} -> 
               (match List.assoc_opt x fields with 
                | None -> assert false
                | Some ty' -> ty')
             | _ -> assert false)   
          ty_record xs
      in
      Types.unify ~loc ty_value tyCase;
      Types.T_unit

    | I_array_assign{xr;idxs;a} -> 

      let ty = typeVar envTy xr loc in
      (match ty with
       | Types.T_pow{ty=Types.T_tuple{tys=[tyidxs;ty0]}} -> 
         Types.unify ~loc ty0 (typTerm envTy a)
       | _ -> ());
      let _ = typTerm envTy ({loc;desc=A_app(* A_array_access*) {xr={y=xr;ty};idxs}}) in
      Types.T_unit

    | I_var{xs;i} -> 
      let ext = List.map (fun Ast.{y;ty} -> (Ast.x2xr y,ty)) xs in
      let _ = typInst (ext @ envTy) i in
      Types.T_unit

    | I_call {outs;op;args} -> 
      let opTy = typeVar envTy op loc in
      let tyArgs = List.map (typTerm envTy) args in
      let tyOut =
        List.map
          (fun {y;ty} ->
            Types.unify ~loc ty (typeVar envTy y loc); ty) outs
      in
      Types.unify ~loc opTy (T_operation{tyOut;tyArgs}); 
      Types.T_unit

    | I_seq{i1;i2} -> 
      Types.unify ~loc Types.T_unit (typInst envTy i1);
      Types.unify ~loc Types.T_unit (typInst envTy i2);
      Types.T_unit

    | I_if{c0;i0;cases;others} -> 

      List.iter
        (fun (c,i) -> 
           Types.unify ~loc Types.T_bool (typCondition envTy c);
           Types.unify ~loc Types.T_unit (typInst envTy i)
        ) 
        ((c0,i0) :: cases);
      (match others with
       | None -> ();
       | Some i -> Types.unify ~loc Types.T_unit (typInst envTy i));
      Types.T_unit

    | I_case {a;cases;others} -> 
      let ty = typTerm envTy a in
      List.iter
        (fun (ks,i) -> 
           List.iter (fun k -> Types.unify ~loc ty (typConstant k)) ks;
           Types.unify ~loc Types.T_unit (typInst envTy i)
        ) cases;
      (match others with
       | None -> ();
       | Some i -> Types.unify ~loc Types.T_unit (typInst envTy i));
      Types.T_unit

    | I_while{c;i} ->
      Types.unify ~loc Types.T_bool (typCondition envTy c);
      Types.unify ~loc Types.T_unit (typInst envTy i);
      Types.T_unit
    | I_assert{c;i} ->
      Types.unify ~loc Types.T_bool (typCondition envTy c);
      Types.unify ~loc Types.T_unit (typInst envTy i);
      Types.T_unit

    | Debug_print_int {a} ->
      Types.unify ~loc Types.T_int (typTerm envTy a);
      Types.T_unit
    | Debug_print_type{a} -> 
      let ty = typTerm envTy a in
      let () =
        Printf.printf "[informative] %s\n\
                      \ This expression has type %s\n"
          (Err.string_of_position loc) (Types.printTy ty)
      in
      Types.T_unit

    | Debug_ill_typed{a} ->
      (try ignore (typTerm envTy a); 
         Printf.printf "----------------------%s\n\
                       \ This expression should be ill-typed !\n\
                       \ --------------------\nexit.\n" 
           (Err.string_of_position loc); exit 0
       with Types.Unification_failure {msg;ty1;ty2;loc} -> 
         Printf.printf "%s\n[informative] As expected,\
                       \ this expression is ill-typed :\n\
                       \ This expression has type %s\
                       \ but an expression was expected of type %s.\n\n"
           (Err.string_of_position loc)
           (Types.printTy ty1)
           (Types.printTy ty2)); 
      Types.T_unit


  let typOperation ~loc envTy Ast.{h={return=outs;name;args};i} =

    (* dans un premier temps, 
       ne prends pas en compte les annotations existantes 
       (de toute façon, le typeur ne sera lancé a priori qu'une fois) *)

    let tyArgs = List.map (fun Ast.{ty} -> ty) args in
    let tyOut = List.map (fun Ast.{ty} -> ty) outs in
    let envTy = ( List.map2
                    (fun Ast.{y;ty} v -> (Ast.x2xr y,ty))
                    (args @ outs)
                    (tyArgs @ tyOut) ) @ envTy in
    Types.unify ~loc Types.T_unit (typInst envTy i);
    let tyop = Types.T_operation{tyArgs;tyOut} in
    let tyop' = typeVar envTy name loc in  
    Types.unify ~loc tyop tyop';
    envTy

  let typClauseOperations ~loc envTy ops = 
    (* les opérations sont mutuellement récursives *)
    let envTy = List.map (fun (Ast.{desc={h={return=outs;name;args}}})->
                      (name,Types.(T_operation{tyArgs=List.map (fun _ ->  T_alpha(fresh_variable ())) args;
                                               tyOut=List.map (fun _ -> T_alpha(fresh_variable ())) outs}))) ops 
                @ envTy in
    List.fold_left (fun envTy Ast.{desc;loc} -> 
        typOperation ~loc envTy desc) envTy ops

  let rec typClauses (envTy : contexte) cs = 
    let open Ast in
    List.fold_left (fun envTy Ast.{desc;loc} ->
        match desc with 
        | Ast.Sees{mchs} -> (* attention, la machine ouverte (* vue *) 
                               n'est pas refermée ... *)
          let exts = List.map (fun xr ->
              let m = match xr with 
                      | Ast.Id_ren{r=m::_} -> m 
                      | Ast.Id_ren{x=m} -> m 
              in 
              List.filter_map
                (function
                  | (Ast.Id_ren{x;r=m'::_},ty) ->
                    if m = m' then Some (Ast.Id_ren{x;r=[]},ty) else None 
                  | _ -> None) envTy)
              mchs
          in
          (List.concat exts) @ envTy
        | Ast.Inclusion {mchs_init} -> 
          List.fold_left (fun envTy ((Ast.Id_ren {x=m}) as machine_xr,parameters) ->    
              let ty = typeVar envTy (Ast.Id_ren{x=m;r=[]}) loc in  
              let envTy =
                match machine_xr with 
                | Ast.Id_ren{x=m;r=[]} -> envTy
                | Ast.Id_ren{x=m;r=m'::_} -> 
                  (Ast.Id_ren{x=m';r=[]},ty)::envTy
              in

              Types.unify ~loc ty
                (Types.T_machine{parameters=
                                 List.map
                                   (typTerm envTy)
                                   parameters});

              let ext = List.filter_map 
                  (function 
                    | (Ast.Id_ren{x;r=[name']},ty) ->
                      (match machine_xr with 
                       | Ast.Id_ren{x=name;r=[]} -> if m = name' 
                         then Some (Ast.Id_ren{x;r=[]},ty)
                         else None
                       | Ast.Id_ren{r=name::_} -> 
                         if m = name' 
                         then Some (Ast.Id_ren{x;r=[name]},ty)
                         else None)
                    | _ -> None) envTy in
              (ext@envTy)) envTy mchs_init
        | Ast.Sets{sets} -> 
          List.fold_left (fun envTy set -> 
              match set with
              | Ast.SetIdent _ -> envTy
              | Ast.DefSet{x;enum} -> 
                let ext =
                  List.map
                    (fun cstr ->
                       (Ast.Id_ren{x=cstr;r=[]},Types.T_ident{name=x}))
                    enum
                in
                ext @ envTy)
            envTy sets
        | Ast.OperationsB0 {ops;local} ->
          (* pas de gestion des visibilités, 
             peut causer des problèmes de captures *)
          typClauseOperations ~loc envTy ops (* local *) 

        | Ast.InitialisationB0 {i} ->
          Types.unify ~loc Types.T_unit (typInst envTy i);
          envTy
        (*| Ast.Concrete_constants {cs} -> 
           List.map (fun c -> (Ast.x2xr c,Types.T_alpha (Types.fresh_variable()))) cs @ envTy *)
        | Ast.Values {bindings} -> 
          List.fold_left (fun envTy (x,a) ->   
                let ty = typTerm envTy a in
                (Ast.Id_ren{x;r=[]},ty)::envTy)
            envTy bindings
        | Ast.Concrete_variables {xs} ->
          let ext = List.map (fun {y=xr;ty} -> xr,ty) xs in
          ext @ envTy
        | _ -> envTy) envTy cs ;;


  let rec typComponent envTy Ast.{loc;desc} =
    match desc with
    | Ast.Component {name;parameters;clauses=cs} ->
      Err.current_file_name := name;
      let vars = List.map (fun Ast.{ty} -> ty) parameters in
      let ext = List.map2 (fun Ast.{y} v -> Ast.x2xr y,v) parameters vars in
      let envTy = ext @ envTy in
      let envTy = typClauses envTy cs in
      let envTy = List.map (function 
          | (Ast.Id_ren{x;r=[]},Types.T_machine _) as b -> b
          | (Ast.Id_ren{x;r=[]},ty) -> (Ast.Id_ren{x;r=[name]},ty)
          | b -> b) envTy in
      (Ast.Id_ren{x=name;r=[]},Types.T_machine{parameters=vars}) :: envTy

  let typComponents ?(init_envTy=[]) cps =
    List.fold_left typComponent init_envTy cps

end

let handle_ty_error f = 
  try f () with Types.Unification_failure {msg;ty1;ty2;loc} -> 
    let msg' =
      Printf.sprintf "This expression has type %s\
                     \ but an expression was expected of type %s %s" 
        (Types.printTy ty1) 
        (Types.printTy ty2) 
        (match msg with
         | None -> ""
         | Some m -> "(" ^ m ^")")
    in
    Err.error_exit loc msg'


let typComponents ?(init_envTy=[]) cps = 
  handle_ty_error @@
  (fun () ->
     ignore (Typing.typComponents ~init_envTy cps))
