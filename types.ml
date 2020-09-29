(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* grammaire des types de B0 *)


type pos = Err.pos

type ident = string

let default_position = Err.default_position

type t =
  | T_int 
  | T_bool
  | T_string
  | T_unit (* type des instructions *)
  | T_range (* eg. (4 .. 42) *)
  | T_ident of {name:ident}
  | T_pow of {ty:t} 
  | T_tuple of {tys:t list}
  | T_machine of {parameters:t list}
  | T_struct of record ref
  | T_alpha of vartype ref
  | T_operation of {tyOut:t list;tyArgs:t list}
  | T_arrow of {tyArgs:t list;ty:t}

and record = {fields:(ident * t) list;row: bool}

and vartype = 
    Unknown of int
  | Instanciated of t

let mk_struct fields = 
   T_struct (ref {fields;row=false})

let rec printTy = function
  | T_int -> "INT"
  | T_bool -> "BOOL"
  | T_string -> "STRING"
  | T_unit -> "UNIT"
  | T_range -> "RANGE"
  | T_ident {name} -> name
  | T_pow{ty} -> "POW " ^ printTy ty
  | T_tuple{tys} -> "(" ^ (printTys " * " tys) ^ ")"
  | T_machine{parameters} ->  "MACHINE (" ^ (printTys " , " parameters) ^ ")"
  | T_struct {contents={fields;row}} ->
    "struct(" ^ 
    (String.concat "," @@
     (List.map (fun (x,ty) -> x ^ ":" ^ printTy ty) fields)) ^
    (match row with
       false -> ""
     | true -> ",..") ^ ")"
  | T_alpha r -> printVartype ~prefix:"'a" !r 
  | T_operation{tyOut;tyArgs} ->
    "(" ^ printTys " * " tyOut ^ ") <-- (" ^ printTys " * " tyArgs ^ ")"
  | T_arrow {tyArgs;ty} -> String.concat " * " (List.map printTy tyArgs) ^ "-->" ^ printTy ty

and printVartype ~prefix = function
  | Unknown n -> prefix ^ string_of_int n
  | Instanciated t -> printTy t

and printTys sep tys =
  String.concat sep @@ List.map printTy tys

let fresh_variable = let c = ref 0 in (fun () -> incr c; ref (Unknown !c))

let occur n t = 
  let rec aux t = match t with 
    | T_int | T_bool | T_string | T_unit | T_range | T_ident _ -> false
    | T_pow{ty} -> aux ty
    | T_tuple{tys} -> List.exists aux tys
    | T_machine{parameters} -> List.exists aux parameters
    | T_struct {contents={fields}} -> 
      List.exists (fun (_,ty) -> aux ty) fields 
    | T_alpha r -> (match !r with 
        | Unknown n' -> n = n'
        | Instanciated t -> aux t)
    | T_operation{tyOut;tyArgs} ->
      List.exists aux tyOut || List.exists aux tyArgs 
    | T_arrow {tyArgs;ty} -> List.exists aux tyArgs || aux ty
  in
  aux t

exception Unification_failure of {loc:pos;ty1:t;ty2:t;msg:string option}


let unification_failure ?(loc=default_position) ?msg ty1 ty2 =
  raise (Unification_failure {ty1;ty2;msg;loc})


let rec difference fields1 fields2 = 
  let rec aux acc1 acc2 fields1 fields2 = 
    match fields1,fields2 with
    | [],r -> List.rev (r @ acc1), List.rev acc2
    | r,[] -> List.rev acc1, List.rev (r @ acc2)
    | (x1,ty1)::r1,(x2,ty2)::r2 -> if x1 < x2
      then aux acc1 ((x1,ty1)::acc2) r1 fields2
      else if x1 > x2 then aux ((x2,ty2)::acc1) acc2 fields1 r2
      else aux acc1 acc2 r1 r2 in
  aux [] [] fields1 fields2 

let rec shorten = function
    T_alpha (vt) as tt ->
    (match !vt with
       Unknown _  -> tt
     | Instanciated ((T_alpha _) as t) ->
       let t2 = shorten t in
       vt := Instanciated t;
       t2
     | Instanciated t -> t
    )
  | t -> t;;

let rec unify ?(loc=default_position) lt1 lt2 =
  let lt1,lt2 = shorten lt1, shorten lt2 in
  match (lt1,lt2) with
  | T_alpha ( {contents=Unknown n} as occn ),
    T_alpha {contents=Unknown m} ->
    if n=m then () else occn:= Instanciated lt2
  | T_alpha ({contents=(Unknown n)} as occn), _ ->
    if occur n lt2
    then unification_failure lt1 lt2
    else occn:=Instanciated lt2
  | _ , T_alpha _ -> unify ~loc lt2 lt1
  | T_int,T_int | T_bool,T_bool | T_string,T_string | T_unit,T_unit | T_range,T_range ->
    if lt1=lt2 then () else unification_failure lt1 lt2
  | T_ident {name=x},T_ident {name=x'} -> 
    if x = x' then () else unification_failure lt1 lt2
  | T_machine{parameters=tys1}, T_machine{parameters=tys2}
  | T_tuple{tys=tys1}, T_tuple{tys=tys2} ->
    if List.length tys1 = List.length tys2 then
      List.iter2 (unify ~loc) tys1 tys2
    else unification_failure lt1 lt2
  | T_pow{ty=ty1},T_pow{ty=ty2} -> unify ~loc ty1 ty2
  | T_struct r1,T_struct r2 -> 
    (let {fields=fields1;row=row1}, {fields=fields2;row=row2} = !r1,!r2 in
     let sort tys = List.sort (fun (x1,_) (x2,_) -> compare x1 x2) tys in (* pas efficace ... *)
     let fields1 = sort fields1 in
     let fields2 = sort fields2 in
     if not row1 && not row2 && List.length fields1 = List.length fields2 
     then List.iter2 (fun (x1,ty1) (x2,ty2) ->
         if x1 <> x2 then unification_failure ty1 ty2 else unify ~loc ty1 ty2) 
         fields1 fields2
     else
       match difference fields1 fields2,row1,row2 with
       | (([], []), true, true) -> List.iter2 (fun (x1,ty1) (x2,ty2) ->
           if x1 <> x2 then unification_failure ty1 ty2 else unify ~loc ty1 ty2) 
           fields1 fields2
       | (([], []), false, false) -> assert false (* cf. unify_list plus haut *)
       | (_,(_::_)),_,false 
       | ((_::_),_),false,_ -> unification_failure lt1 lt2
       | (acc1,acc2),true,false -> 
         r1 := {fields=fields1 @ acc1;row=false};
         unify ~loc lt2 lt1;
       | (acc1,acc2),false,true -> 
         r2 := {fields=fields2 @ acc2;row=false};
         unify ~loc lt2 lt1
       | (acc1,acc2),true,true -> 
         r1 := {fields=fields1 @ acc1;row=true};
         r2 := {fields=fields2 @ acc2;row=true};
         unify ~loc lt2 lt1)
  | T_operation{tyOut=tyOut1;tyArgs=tyArgs1},T_operation{tyOut=tyOut2;tyArgs=tyArgs2} -> 
    if List.length tyOut1 = List.length tyOut2 
    &&  List.length tyArgs1 = List.length tyArgs2 
    then (List.iter2 (unify ~loc) tyOut1 tyOut2;
          List.iter2 (unify ~loc) tyArgs1 tyArgs2)
    else unification_failure lt1 lt2
  | T_arrow {tyArgs;ty},T_arrow {tyArgs=tyArgs';ty=ty'} -> 
    if List.length tyArgs = List.length tyArgs' then
      List.iter2 (unify ~loc) tyArgs tyArgs'
    else unification_failure lt1 lt2;
    unify ~loc ty ty'
  | _ -> unification_failure lt1 lt2



(* test :
 ******
   let t1 = T_struct (ref {fields=["x",T_int];row=true})
   let t2 = T_struct (ref {fields=["x",T_int;"y",T_bool;"z",String];row=false}) ;;
   unify t1 t2;;
   Printf.printf "%s   %s\n" (printTy t1) (printTy t2);; *)

