
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
    | Some Types.(Alpha {contents=(Instanciated ty)}) -> ty
    | Some ty -> ty

  let typConstant k = 
    let open Ast in match k with
    | Int _ -> Types.Int
    | Bool _ -> Types.Bool
    | String _ -> Types.String

  let add_field ~loc ty x =
    let open Ast in
    match ty with
      Types.Alpha v -> 
      let v' = Types.fresh_variable () in
      v := Types.(Instanciated (Struct(ref {fields=[x,Alpha v'];row=true})))
    | Types.Struct ({contents={fields;row}} as r) -> 
      (match List.assoc_opt x fields with
       | Some _ -> ()
       | None ->
         r := let v = Types.fresh_variable () in
           {fields=[x,Alpha v];row=true})
    | _ -> Types.(unification_failure ~loc ty
                    (Struct (ref {fields=[];row=true})))

  let rec typTerm (envTy : contexte) (a:Ast.term) : Types.t = 
    let open Ast in
    let {desc;loc} = a in
    match desc with
    | Const{k} -> typConstant k
    | MLIdent _ -> assert false
    (* MLIdent est privé, utiliser pendant la traduction *) 
    | Ident{xr} -> typeVar envTy xr loc
    | B_array{arr} -> 
      (match arr with 
       | B_array_init(idxs,a) ->
         let tya = typTerm envTy a in
         Types.(Pow{ty=Tuple{tys=[(match idxs with 
             | idx::idxs -> List.fold_left (fun acc _ -> 
                 Tuple{tys=[acc;Int]}) Int idxs
             | _ -> assert false);
            tya]}}) (* pas complet *)

       | B_array_ext{maplets} -> 
         (match maplets with 
          | [] -> assert false (* cf grammaire *)
          | (idxs,a)::maplets ->
            let tya = typTerm envTy a in
            let ty = Types.Tuple{tys=[(match idxs with 
                | [] -> assert false
                | idx::idxs -> 
                  let ty0 = typTerm envTy idx in
                  Types.unify ~loc Int ty0;
                  List.fold_left 
                    (fun acc idx -> 
                       Types.unify ~loc Int (typTerm envTy idx);
                       Types.Tuple{tys=[acc;typTerm envTy idx]}) ty0 idxs);tya]}
            in
            List.iter (fun (idx,a) -> 
                let tya = typTerm envTy a in
                Types.unify ~loc ty (Types.Tuple{tys=[(match idxs with 
                    | [] -> assert false
                    | idx::idxs -> 
                      let ty0 = typTerm envTy idx in
                      Types.unify ~loc Int ty0;
                      List.fold_left 
                        (fun acc idx -> 
                           Types.unify ~loc Int (typTerm envTy idx);
                           Types.Tuple{tys=[acc;typTerm envTy idx]}) ty0 idxs);tya]})
              )maplets;
            Types.Pow{ty}))


    | Array_access{xr;idxs} -> 
      (match typeVar envTy xr loc with
       | Types.Pow{ty=Types.Tuple{tys=[tyidxs;ty0]}} -> 
         Types.unify ~loc tyidxs (match idxs with 
             | [] -> assert false
             | idx::idxs -> 
               (List.fold_left
                  (fun acc idx ->
                     Types.Tuple{tys=[acc;(typTerm envTy idx)]})
                  (typTerm envTy idx) idxs));
         ty0
       | ty -> let a = Types.(Alpha (fresh_variable ())) in
         let b = Types.(Alpha (fresh_variable ())) in
         let ty' = Types.Pow{ty=Types.Tuple{tys=[a;b]}} in
         Types.unification_failure ~loc ty ty')
    | Record_access{a;x} -> 
      let ty = typTerm envTy a in 
      add_field ~loc ty x; 
      (match Types.shorten ty with
       | Types.Struct {contents={fields}} -> 
         (match List.assoc_opt x fields with 
          | None -> Types.(unification_failure ~loc ty
                             (let v = Types.(Alpha (fresh_variable ())) in 
                              Struct (ref {fields=[x,v];row=true})))
          | Some ty -> ty)
       | _ -> Types.(unification_failure ~loc ty
                       (let v = Types.(Alpha (fresh_variable ())) in 
                        Struct (ref {fields=[x,v];row=true}))))
    | Record_create{assocs} -> 
      let assocs = List.mapi (fun i (xopt,a) ->
          match xopt with 
          | None -> ("__fake__"^string_of_int i,a) 
          | Some x -> (x,a)) assocs 
      in
      let assocs = List.sort (fun (x,a) (x',a') -> compare a a') assocs in
      let fields = List.map (fun (x,a) -> (x,typTerm envTy a)) assocs in
      Types.(Struct(ref {fields;row=false}))
    | AppUnOp{op=Uminus;a}
    | AppUnOp{op=Succ;a}
    | AppUnOp{op=Pred;a} -> 
      Types.unify ~loc Types.Int (typTerm envTy a);
      Types.Int
    | AppBinOp{op=Add;a1;a2} 
    | AppBinOp{op=Sub;a1;a2} 
    | AppBinOp{op=Mul;a1;a2}
    | AppBinOp{op=Div;a1;a2} 
    | AppBinOp{op=Pow;a1;a2}
    | AppBinOp{op=Mod;a1;a2} -> 
      Types.unify ~loc Types.Int (typTerm envTy a1);
      Types.unify ~loc Types.Int (typTerm envTy a2);
      Types.Int
    | TermOfCondition{c} -> 
      Types.unify ~loc Types.Bool (typCondition envTy c);
      Types.Bool

  and typCondition (envTy : contexte) (c : Ast.condition) : Types.t = 
    let open Ast in
    let {desc;loc} = c in
    match desc with
    | Compare{op=Eq;a1;a2}
    | Compare{op=Neq;a1;a2} -> 
      let ty1 = typTerm envTy a1 in
      let ty2 = typTerm envTy a2 in
      Types.unify ~loc ty1 ty2;
      Types.Bool

    | Compare{op=Lt;a1;a2}
    | Compare{op=Gt;a1;a2}
    | Compare{op=Le;a1;a2}
    | Compare{op=Ge;a1;a2} -> 
      Types.unify ~loc Types.Int (typTerm envTy a1);
      Types.unify ~loc Types.Int (typTerm envTy a2);
      Types.Bool

    | And{c1;c2}
    | Or{c1;c2} -> 
      let ty1 = typCondition envTy c1 in
      let ty2 = typCondition envTy c2 in
      Types.unify ~loc ty1 ty2;
      Types.Bool
    | Not{c} -> 
      Types.unify ~loc Types.Int (typCondition envTy c);
      Types.Bool

  let rec typInst (envTy : contexte) (i : Ast.instruction) : Types.t = 
    let open Ast in
    let {desc;loc} = i in
    match desc with
    | Skip -> Types.Unit

    | Assign{xr;a} -> 
      let ty1 = typeVar envTy xr loc in
      let ty2 = typTerm envTy a in
      Types.unify ~loc ty1 ty2;
      Types.Unit

    | Record_assign{xr;xs;a} -> 
      let ty_record = typeVar envTy xr loc in
      let ty_value = typTerm envTy a in
      let tyCase = List.fold_left 
          (fun ty x ->
             add_field ~loc ty x;
             let ty = match ty with
               | Types.(Alpha{contents=Instanciated ty}) -> ty
               | ty -> ty in
             match ty with 
             | Types.Struct{contents={fields}} -> 
               (match List.assoc_opt x fields with 
                | None -> assert false
                | Some ty' -> ty')
             | _ -> assert false)   
          ty_record xs
      in
      Types.unify ~loc ty_value tyCase;
      Types.Unit

    | Array_assign{xr;idxs;a} -> 

      (match typeVar envTy xr loc with
       | Types.Pow{ty=Types.Tuple{tys=[tyidxs;ty0]}} -> 
         Types.unify ~loc ty0 (typTerm envTy a)
       | _ -> ());

      let _ = typTerm envTy ({loc;desc=Array_access{xr;idxs}}) in
      Types.Unit

    | Block{i} -> typInst envTy i
    | Var{xs;i} -> 
      let ext = List.map (fun Ast.{y;ty} -> ((y,None),ty)) xs in
      let _ = typInst (ext @ envTy) i in
      Types.Unit

    | Call {outs;op;args} -> 
      let opTy = typeVar envTy op loc in
      let tyArgs = List.map (typTerm envTy) args in
      let tyOut =
        List.map
          (fun {y;ty} ->
            Types.unify ~loc ty (typeVar envTy y loc); ty) outs
      in
      Types.unify ~loc opTy (Operation{tyOut;tyArgs}); 
      Types.Unit

    | Seq{i1;i2} -> 
      Types.unify ~loc Types.Unit (typInst envTy i1);
      Types.unify ~loc Types.Unit (typInst envTy i2);
      Types.Unit

    | If{c0;i0;cases;others} -> 

      List.iter
        (fun (c,i) -> 
           Types.unify ~loc Types.Bool (typCondition envTy c);
           Types.unify ~loc Types.Unit (typInst envTy i)
        ) 
        ((c0,i0) :: cases);
      (match others with
       | None -> ();
       | Some i -> Types.unify ~loc Types.Unit (typInst envTy i));
      Types.Unit

    | Case {a;cases;others} -> 
      let ty = typTerm envTy a in
      List.iter
        (fun (ks,i) -> 
           List.iter (fun k -> Types.unify ~loc ty (typConstant k)) ks;
           Types.unify ~loc Types.Unit (typInst envTy i)
        ) cases;
      (match others with
       | None -> ();
       | Some i -> Types.unify ~loc Types.Unit (typInst envTy i));
      Types.Unit

    | While{c;i} ->
      Types.unify ~loc Types.Bool (typCondition envTy c);
      Types.unify ~loc Types.Unit (typInst envTy i);
      Types.Unit
    | Assert{c;i} ->
      Types.unify ~loc Types.Bool (typCondition envTy c);
      Types.unify ~loc Types.Unit (typInst envTy i);
      Types.Unit

    | Print_int {a} ->
      Types.unify ~loc Types.Int (typTerm envTy a);
      Types.Unit
    | Print_type{a} -> 
      let ty = typTerm envTy a in
      let () =
        Printf.printf "[informative] %s\n\
                      \ This expression has type %s\n"
          (Err.string_of_position loc) (Types.printTy ty)
      in
      Types.Unit

    | Ill_typed{a} ->
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
      Types.Unit


  let typOperation ~loc envTy Ast.{h={return=outs;name;args};i} =

    (* dans un premier temps, 
       ne prends pas en compte les annotations existantes 
       (de toute façon, le typeur ne sera lancé a priori qu'une fois) *)

    let tyArgs = List.map (fun Ast.{ty} -> ty) args in
    let tyOut = List.map (fun Ast.{ty} -> ty) outs in
    let envTy = ( List.map2
                    (fun Ast.{y;ty} v -> ((y,None),ty))
                    (args @ outs)
                    (tyArgs @ tyOut) ) @ envTy in
    Types.unify ~loc Types.Unit (typInst envTy i);
    let tyop = Types.Operation{tyArgs;tyOut} in
    (name,tyop)::envTy

  let typClauseOperations ~loc envTy ops = 
    List.fold_left (fun envTy Ast.{desc;loc} -> 
        typOperation ~loc envTy desc) envTy ops

  let rec typClauses envTy cs = 
    let open Ast in
    List.fold_left (fun envTy Ast.{desc;loc} ->
        match desc with 
        | Ast.Sees{mchs} -> (* attention, la machine ouverte (* vue *) 
                               n'est pas refermée ... *)
          let exts = List.map (fun xr ->
              let m = match xr with  (_,Some (m::_)) -> m | (m,_) -> m in 
              List.filter_map
                (function
                  | ((x,Some(m'::_)),ty) ->
                    if m = m' then Some ((x,None),ty) else None 
                  | _ -> None) envTy)
              mchs
          in
          (List.concat exts) @ envTy
        | Ast.Inclusion {mchs_init} -> 
          List.fold_left (fun envTy ((m,r) as machine_xr,parameters) ->    
              let ty = typeVar envTy (m,None) loc in  
              let envTy =
                match machine_xr with 
                | m,None -> envTy
                | m,Some (m'::_) -> 
                  ((m',None),ty)::envTy
                | _ -> assert false
              in

              Types.unify ~loc ty
                (Types.Machine{parameters=
                                 List.map
                                   (typTerm envTy)
                                   parameters});

              let ext = List.filter_map 
                  (function 
                    | ((x,Some [name']),ty) ->
                      (match machine_xr with 
                       | name,None -> if m = name' 
                         then Some ((x,None),ty)
                         else None
                       | _,Some (name::_) -> 
                         if m = name' 
                         then Some ((x,Some [name]),ty)
                         else None
                       | _ -> assert false)
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
                       ((cstr,None),Types.Ident{name=x}))
                    enum
                in
                ext @ envTy)
            envTy sets
        | Ast.OperationsB0 {ops;local} ->
          (* pas de gestion des visibilités, 
             peut causer des problèmes de captures *)
          typClauseOperations ~loc envTy ops (* local *) 

        | Ast.InitialisationB0 {i} ->
          Types.unify ~loc Types.Unit (typInst envTy i);
          envTy
        | Ast.Values {bindings} -> 
          List.fold_left (fun envTy (x,v) ->
              match v with 
              | Ast.TermValue a -> 
                let ty = typTerm envTy a in
                ((x,None),ty)::envTy
              | Ast.IntervalValue(Interval(a1,a2)) -> 
                let ty1 = typTerm envTy a1 in
                let ty2 = typTerm envTy a2 in
                ((x,None),Types.Tuple{tys=[ty1;ty2]})::envTy
              | Ast.IntervalValue (AliasInterval _) ->
                (Printf.printf "todo";assert false))
            envTy bindings
        | Ast.Concrete_variables {xs} ->
          let ext = List.map (fun {y=xr;ty} -> xr,ty) xs in
          ext @ envTy
        | _ -> envTy) envTy cs ;;


  let rec typComponent envTy Ast.{loc;desc} = 
    match desc with
    | Ast.Component {name;parameters;clauses=cs} ->
      let vars = List.map (fun Ast.{ty} -> ty) parameters in
      let ext = List.map2 (fun Ast.{y=x} v -> (x,None),v) parameters vars in
      let envTy = ext @ envTy in
      let envTy = typClauses envTy cs in
      let envTy = List.map (function 
          | ((x,None),Types.Machine _) as b -> b
          | ((x,None),ty) -> ((x,Some[name]),ty)
          | b -> b) envTy in
      ((name,None),Types.Machine{parameters=vars}) :: envTy

  let typComponents cps =
    List.fold_left typComponent [] cps

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


let typComponents cps = 
  handle_ty_error @@
  (fun () ->
     ignore (Typing.typComponents cps))
