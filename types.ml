type pos = Err.pos

type ident = string

let default_position = Err.default_position

type t =
  | Int 
  | Bool
  | String
  | Unit (* type des instructions *)
  | Ident of {name:ident}
  | Pow of {ty:t} 
  | Tuple of {tys:t list}
  | Machine of {parameters : t list}
  | Struct of record ref
  | Alpha of vartype ref
  | Operation of {tyOut:t list;tyArgs:t list}

and record = {fields:(ident * t) list;row: bool}

and vartype = 
    Unknown of int
  | Instanciated of t

let rec printTy = function
  | Int -> "INT"
  | Bool -> "BOOL"
  | String -> "STRING"
  | Unit -> "UNIT"
  | Ident {name} -> name
  | Pow{ty} -> "POW " ^ printTy ty
  | Tuple{tys} -> "(" ^ (printTys " * " tys) ^ ")"
  | Machine{parameters} ->  "MACHINE (" ^ (printTys " , " parameters) ^ ")"
  | Struct {contents={fields;row}} ->
    "struct(" ^ 
    (String.concat "," @@
     (List.map (fun (x,ty) -> x ^ ":" ^ printTy ty) fields)) ^
    (match row with
       false -> ""
     | true -> ",..") ^ ")"
  | Alpha r -> printVartype ~prefix:"'a" !r 
  | Operation{tyOut;tyArgs} ->
    "(" ^ printTys " * " tyOut ^ ") <-- (" ^ printTys " * " tyArgs ^ ")"

and printVartype ~prefix = function
  |  Unknown n -> prefix ^ string_of_int n
  | Instanciated t -> printTy t

and printTys sep tys =
  String.concat sep @@ List.map printTy tys

let fresh_variable = let c = ref 0 in (fun () -> incr c; ref (Unknown !c))

let occur n t = 
  let rec aux t = match t with 
    | Int | Bool | String | Unit | Ident _ -> false
    | Pow{ty} -> aux ty
    | Tuple{tys} -> List.exists aux tys
    | Machine{parameters} -> List.exists aux parameters
    | Struct {contents={fields}} -> 
      List.exists (fun (_,ty) -> aux ty) fields 
    | Alpha r -> (match !r with 
        | Unknown n' -> n = n'
        | Instanciated t -> aux t)
    | Operation{tyOut;tyArgs} ->
      List.exists aux tyOut || List.exists aux tyArgs 
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
    Alpha (vt) as tt ->
    (match !vt with
       Unknown _  -> tt
     | Instanciated ((Alpha _) as t) ->
       let t2 = shorten t in
       vt := Instanciated t;
       t2
     | Instanciated t -> t
    )
  | t -> t;;

let rec unify ?(loc=default_position) lt1 lt2 =
  let lt1,lt2 = shorten lt1, shorten lt2 in
  match (lt1,lt2) with
  | Alpha ( {contents=Unknown n} as occn ),
    Alpha {contents=Unknown m} ->
    if n=m then () else occn:= Instanciated lt2
  | Alpha ({contents=(Unknown n)} as occn), _ -> 
    if occur n lt2
    then unification_failure lt1 lt2
    else occn:=Instanciated lt2
  | _ , Alpha _ -> unify ~loc lt2 lt1
  | Int,Int | Bool,Bool | String,String | Unit,Unit ->
    if lt1=lt2 then () else unification_failure lt1 lt2
  | Ident {name=x},Ident {name=x'} -> 
    if x = x' then () else unification_failure lt1 lt2
  | Machine{parameters=tys1}, Machine{parameters=tys2}
  | Tuple{tys=tys1}, Tuple{tys=tys2} ->
    if List.length tys1 = List.length tys2 then
      List.iter2 (unify ~loc) tys1 tys2
    else unification_failure lt1 lt2
  | Pow{ty=ty1},Pow{ty=ty2} -> unify ~loc ty1 ty2
  | Struct r1,Struct r2 -> 
    (let {fields=fields1;row=row1}, {fields=fields2;row=row2} = !r1,!r2 in
     let sort tys = List.sort (fun (x1,_) (x2,_) -> compare x1 x2) tys in
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
  | Operation{tyOut=tyOut1;tyArgs=tyArgs1},Operation{tyOut=tyOut2;tyArgs=tyArgs2} -> 
    if List.length tyOut1 = List.length tyOut2 
    &&  List.length tyArgs1 = List.length tyArgs2 
    then (List.iter2 (unify ~loc) tyOut1 tyOut2;
          List.iter2 (unify ~loc) tyArgs1 tyArgs2)
    else unification_failure lt1 lt2
  | _ -> unification_failure lt1 lt2



(* test :
 ******
   let t1 = Struct (ref {fields=["x",Int];row=true})
   let t2 = Struct (ref {fields=["x",Int;"y",Bool;"z",String];row=false}) ;;
   unify t1 t2;;
   Printf.printf "%s   %s\n" (printTy t1) (printTy t2);; *)

