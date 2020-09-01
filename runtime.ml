

type occur = {mutable pow : bool;
              mutable lt : bool;
              mutable le : bool;
              mutable gt : bool;
              mutable ge : bool}

let occur = {pow=false;lt=false;le=false;gt=false;ge=false}

let binop_occur op =
  match op with
  | Ast.Pow -> occur.pow <- true
  | _ -> ()

let comparator_occur op =
  match op with
  | Ast.Eq -> ()
  | Ast.Neq -> ()
  | Ast.Lt -> occur.lt <- true 
  | Ast.Gt -> occur.gt <- true 
  | Ast.Le -> occur.le <- true 
  | Ast.Ge -> occur.ge <- true 


let lt = "let (<) : int -> int -> bool = (<) ;;\n"
let le = "let (<=) : int -> int -> bool = (<=) ;;\n"
let gt = "let (>) : int -> int -> bool = (>) ;;\n"
let ge = "let (>=) : int -> int -> bool = (>=) ;;\n"

let pow = "let ( **~ ) b n =\n\
          \  let rec aux = function\n\
          \    0 -> 1\n\
          \  | n -> let b2 = aux (n / 2) in\n\
          \    if n mod 2 = 0 then b2 * b2\n\
          \    else b * b2 * b2\n\
          \  in aux n ;;\n"

let make () = 
  let r = ref "" in
  if occur.lt then r := !r ^ lt;
  if occur.le then r := !r ^ le;
  if occur.gt then r := !r ^ gt;
  if occur.ge then r := !r ^ ge;
  if occur.pow then r := !r ^ pow;
  !r ^ "\n"
