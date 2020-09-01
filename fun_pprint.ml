open Fun_ast

let sptf = Printf.sprintf
let mapcat sep f xs = String.concat sep @@ List.map f xs
let mapicat sep f xs = String.concat sep @@ List.mapi f xs
let initcat sep size f = String.concat sep @@ List.init size f

let print_binop = function
  | Add -> "+" 
  | Sub -> "-"
  | Mul -> "*" 
  | Div -> "/"
  | Pow -> "**~"
  | And -> "&&"
  | Or -> "||"
  | Mod -> "mod"
  | Eq -> "="
  | Neq -> "<>"
  | Le -> "<="
  | Ge -> ">="
  | Lt -> "<" 
  | Gt -> ">"

let print_unop = function 
  | Neg -> "-" 
  | Succ -> "succ"
  | Pred -> "pred"
  | Not -> "not"

let parenthesized flag s = 
  if flag then sptf "(%s)" s else s

let rec iter f x = function 
  | 0 -> x 
  | n -> iter f (f x) (n-1);;

let print_literal = function
  | Int n -> n
  | Bool b -> if b then "true" else "false" 
  | String s -> sptf "\"%s\"" s
  | Variant name -> name

let rec print_exp ?(paren=false) = function
    Literal {k} -> 
    print_literal k

  | Nuplet {es} -> 
    parenthesized paren @@ mapcat "," print_exp es

  | AppBinOp {op;e1;e2} -> 
    parenthesized paren @@
    sptf "%s %s %s"    
      (print_exp ~paren:true e1) 
      (print_binop op) 
      (print_exp ~paren:true e2)

  | AppUnOp {op;e} -> 
    parenthesized paren @@
    sptf "%s %s" 
      (print_unop op)
      (print_exp ~paren:true e)

  | App {e1;e2} -> 
    parenthesized paren @@
    sptf "%s %s" 
      (print_exp ~paren:true e1)
      (print_exp ~paren:true e2)

  | Access{k;vartype} -> 
    (* C[Fetch{k=3;vartypeLV}] ~> Lv.fetch s.pop.pop.pop *)
    let get = match vartype with
      | LV -> "Lv.fetch"
      | GV -> "Gv.fetch"
      | Arg_in -> "Arg_in.fetch"
      | Arg_out -> "Arg_out.fetch"
      | CST -> "Cst.fetch"
      | OP -> assert false (* -> erreur de traduction *)
    in 
    parenthesized paren @@
    sptf "%s %s" get (iter (sptf "%s.pop") "s" k)

  | Record {assocs} -> 
    sptf "{%s}" @@ 
    mapcat ";" (fun (field,e) -> sptf "%s=%s" field (print_exp e)) assocs

  | GetField {e;x} -> 
    sptf "%s.%s" (print_exp ~paren:true e) x

  | UpdateField {e;x;v} -> 
    sptf "{%s with %s=%s}" (print_exp e) x (print_exp v)

  | AList {assocs} ->
    let print_pair (k,v) = 
      sptf "(%s,%s)" (print_exp ~paren:true k) (print_exp ~paren:true v) 
    in
    sptf "AList.create [%s]" @@ mapcat ";" print_pair assocs
  | Assoc {e;k} -> 
    sptf "(AList.assoc %s %s)" 
      (print_exp ~paren:true e)
      (print_exp ~paren:true k)

  | Acons {e;k;v} -> 
    parenthesized paren @@
    sptf "AList.acons %s %s %s"       
      (print_exp ~paren:true k) 
      (print_exp ~paren:true v)
      (print_exp ~paren:true e) 

  | Let {n;e1;e2} ->  
    (* va de paire avec Name {n}. 
       Dans le code produit, le numéro [n] produit le nom [xn] *) 
    parenthesized paren @@ 
    sptf "let y%d = %s in %s" n (print_exp e1) (print_exp e2) 
  | Name {n} -> sptf "y%d" n

and print_ctx_exp ?(paren=false) (Exp {e}) =
  parenthesized paren @@
  sptf "fun s -> %s" (print_exp ~paren:paren e)

let update_var v k vartype =
  let set = match vartype with 
    | LV -> "Lv.set"
    | GV -> "Gv.set"
    | Arg_in -> "Arg_in.set"
    | Arg_out -> "Arg_out.set"
    | CST -> assert false 
    | OP -> assert false (* -> erreur de traduction *)
  in
  sptf "assign %s %s" 
    (print_ctx_exp ~paren:true v)
    (sptf "(fun v -> %s)" @@ iter (sptf "update (%s)") (sptf "%s v" set) k)

let define_cst vs = 
  List.fold_left
    (fun acc v ->
       (sptf "Cst.def %s (%s)" (print_ctx_exp ~paren:true v) acc))
    "s" (List.rev vs)

let rec print_inst ?(paren=false) = function
  | Skip -> "skip"

  | Seq{is} -> 
    parenthesized paren @@ 
    (match is with 
     | [] | [_] -> assert false
     | _ ->  
       mapcat " $\n" (fun i -> print_inst ~paren:true i) is)

  | If{c;i1;i2} -> 
    parenthesized paren @@ 
    sptf "if_then_else %s %s %s" 
      (print_ctx_exp ~paren:true c) 
      (print_inst ~paren:true i1) 
      (print_inst ~paren:true i2)

  | While{c;i} -> 
    parenthesized paren @@ 
    sptf "while_do\n%s\n%s" 
      (print_ctx_exp ~paren:true c) 
      (print_inst ~paren:true i)

  | Var{frame_size;i} -> 
    iter (sptf "Lv.var (%s)") (print_inst i) frame_size 

  | Assign{k;v;vartype} ->
    parenthesized paren @@
    update_var v k vartype

  | Assert {c;i} -> 
    parenthesized paren @@
    sptf "fun s -> assert (%s s); %s s"
      (print_ctx_exp ~paren:true c) 
      (print_inst ~paren:true i)

  | Case{e;cases=lp;others} -> 
    parenthesized paren @@
    sptf "case %s (function \n| %s\n| _ -> %s)" (print_ctx_exp ~paren:true e)
      (mapcat "\n| "
         (fun (cs,i) ->
            (sptf "%s -> %s") (mapcat "| " print_literal cs) (print_inst i)) lp)
      (match others with None -> "()" | Some i -> (print_inst i))

  | Call{op=k;args} -> 
    parenthesized paren @@
    iter (sptf "update (%s)") (sptf "call (%s)" (mapcat "," (fun e -> print_exp ~paren:true e) args)) k

  | Arg{k;i} ->  
    parenthesized paren @@
    sptf "Arg_in.var (Arg_in.set x%d $ %s)" k (print_inst ~paren:true i)

  | Print_int{e} -> 
    parenthesized paren @@ 
    sptf "trace (fun s -> print_int %s)" (print_exp ~paren:true e)

(* clause *)

(*   let state_eta_expansion = sptf "fun s -> %s s"  ................ *)

let print_clause ?(paren=false) = function

  | Variables{frame_size} ->
    assert (frame_size > 0);
    sptf "s |> %s" @@ initcat " |> " frame_size (fun _ -> "Gv.ref")

  | Values{bindings} -> 
    assert (List.length bindings > 0);
    parenthesized paren @@
    define_cst (List.map snd bindings)

  | Initialisation{i} -> parenthesized paren @@ (print_inst ~paren:true i) ^ " s"

  | Operations{ops} -> 
    let frame_size = List.length ops in
    assert (frame_size > 0);
    "s \n|> " ^ 
    List.fold_left (fun acc {op;nb_args;nb_out;i} -> 
        iter (sptf "Arg_out.ref \n|> %s") "" nb_out ^
        sptf "def_operator (fun (%s) -> %s) %s" (initcat "," nb_args (sptf "x%d")) (print_inst ~paren:true i) acc) "" ops
(* List.fold_left (fun acc {op;nb_args;nb_out;i} -> 
   iter (sptf "Arg_out.ref |> %s") "" nb_out ^
   sptf "def_operator (fun (%s) -> %s) %s" (initcat "," nb_args (sptf "x%d")) (print_inst ~paren:true i) acc) "" ops
*)
let print_decl = function
  | Main {compositions} -> (match compositions with 
      | [] -> "let main () = empty"
      | names -> Printf.sprintf "\n\n let main () = empty\n     |> %s ;;\n\nmain () ;;" (String.concat "\n     |> " names))
  | Decl {name;c} -> sptf "let %s s = %s" name (print_clause ~paren:true c)
  | TyVariantDecl {x;enum} -> sptf "type %s = %s" x (String.concat " | " enum)

  | TyRecordDecl {bound_variables;name;fields} -> (* coller depuis obj_translate, mutabilité excepté *)
    let pre_paren = match bound_variables with 
      | [] -> assert false 
      | [x] -> false
      | xs -> true in
    let pre = parenthesized  pre_paren @@ 
      mapcat "," (fun n -> Types.(printTy (Alpha n))) bound_variables in
    let body = 
      let string_of_field (RecordField{x;ty}) =
        sptf "%s : %s" x (Types.printTy ty) 
      in 
      mapcat " ; " string_of_field fields 
    in
    sptf "type %s %s = { %s }" pre name body


let print_decls decls = 
  mapcat ";;\n" print_decl decls

