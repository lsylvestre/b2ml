(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* prety-printer, produit un source OCaml *)


open Target

let sptf = Printf.sprintf

let indent_factor = 2

let indent (level:int) (s : string) : string =
  String.make (level*indent_factor) ' ' ^ s


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
  | SetRef -> ":=" 

let print_unop = function 
  | Neg -> "-" 
  | Succ -> "succ"
  | Pred -> "pred"
  | Not -> "not"
  | Deref -> "!"

let parenthesized flag s = 
  if flag then sptf "(%s)" s else s

let rec iter f x = function 
  | 0 -> x 
  | n -> iter f (f x) (n-1);;

(* .... *)

let print_literal = function
  | ML_C_unit -> "()"
  | ML_C_int n -> n
  | ML_C_bool b -> if b then "true" else "false" 
  | ML_C_string s -> sptf "\"%s\"" s
  | ML_C_variant name -> name
  | ML_C_alpha n -> sptf "(__alpha__ : 'a%d)" n
  | ML_C_empty_array -> "[||]"
  | ML_C_name x -> x
  | ML_C_poly -> "(Obj.magic (Some 0))"
let print_ident_ren (Ast.Id_ren{x;r}) = 
  String.concat "." r ^ "." ^ x

let rec print_exp ?(paren=false) = function
    ML_E_literal {k} -> 
    print_literal k

  | ML_E_tuple {es} -> 
    parenthesized paren @@ mapcat "," print_exp es

  | ML_E_app_binop {op;e1;e2} -> 
    parenthesized paren @@
    sptf "%s %s %s"    
      (print_exp ~paren:true e1) 
      (print_binop op) 
      (print_exp ~paren:true e2)

  | ML_E_app_unop {op;e} -> 
    parenthesized paren @@
    sptf "%s %s" 
      (print_unop op)
      (print_exp ~paren:true e)

  | ML_E_app {e;args} ->
    parenthesized paren @@ 
    sptf "%s %s" (print_exp ~paren:true e) 
    (match args with 
     | [] -> "()" 
     | _ -> mapcat " " (fun e -> print_exp ~paren:true e) args)
  | ML_E_fun{x;e} -> parenthesized paren @@ sptf "fun %s -> %s" x (print_exp e)
  | ML_E_let_in {x:name;e1:exp;e2:exp} -> 
    parenthesized paren @@ 
    sptf "let %s = %s in\n%s" x (print_exp e1) (print_exp e2)
  | ML_E_name{x} -> x
  | ML_E_open_module_in{module_name;e} -> sptf "%s.%s" module_name (print_exp ~paren:true e)
  
  | ML_E_record {assocs} -> 
    sptf "{%s}" @@ 
    mapcat ";" (fun (field,e) -> sptf "%s=%s" field (print_exp e)) assocs

  | ML_E_get_field {e;x} -> 
    sptf "%s.%s" (print_exp ~paren:true e) x

  | ML_E_set_field {e;xs;v} -> 
    sptf "%s.%s <- %s" (print_exp ~paren:true e) (String.concat "." xs) (print_exp v)

  | ML_E_array_create {es} -> "[|" ^ mapcat ";" print_exp es ^"|]"
  | ML_E_array_access{e;k} -> sptf "%s.(%s)" (print_exp ~paren:true e) (print_exp k)
  | ML_E_skip -> "()"
  | ML_E_seq{es} -> 
    parenthesized paren @@ 
    mapcat ";\n" (fun e -> print_exp e) es

  | ML_E_if{c;e1;e2} -> 
    parenthesized paren @@ 
    sptf "if %s then %s\nelse %s" 
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e1) 
      (print_exp ~paren:true e2)

  | ML_E_if_unit {c;e} -> 
    parenthesized paren @@ 
    sptf "if %s then %s" 
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e) 

  | ML_E_while{c;e} -> 
    parenthesized paren @@ 
    sptf "while %s do %s done" 
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e)

  | ML_E_var{vars;e} -> 
    (match vars with 
     | [] -> print_exp  ~paren:paren e
     | _ ->
       parenthesized paren @@
       sptf "let %s in\n%s" (mapcat "\nand " (fun (x,v) -> 
           sptf "%s = ref %s" x (print_exp ~paren:true v)) vars)
         (print_exp e))

  | ML_E_assign{xr;v;vartype} ->
    (match vartype with 
     | Var -> sptf "%s := %s"
     | _ -> sptf "%s <- %s") (print_ident_ren xr)  (print_exp v)

  | ML_E_array_assign{e;es;v} -> 
    parenthesized paren @@
    sptf "%s.(%s) <- %s" (print_exp ~paren:true e) (mapcat ").(" print_exp es) (print_exp v)

  | ML_E_assert {c;e} -> 
    parenthesized paren @@
    sptf "assert %s; %s"
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e)

  | ML_E_match{e;cases=lp;others} -> 
    let print_literal_when {k;w} =
    print_literal k ^ (
      match w with 
      | None -> ""
      | Some e -> " when " ^ print_exp e) in
    parenthesized paren @@
    sptf "match %s with\n| %s\n| _ -> %s" (print_exp e)
      (mapcat "\n| "
         (fun (cs,i) ->
            (sptf "%s -> %s")  (mapcat "| " print_literal_when cs) (print_exp i)) lp)
      (match others with None -> "()" | Some i -> (print_exp i))

  | ML_E_print_int{e} -> 
    parenthesized paren @@ 
    sptf "print_int %s" (print_exp ~paren:true e)

(* clause *)

let print_clause ?(paren=false) = function

  | Variables{vars} ->
    mapcat " \n" (fun (x,v) -> 
        sptf "val mutable %s = %s" x (print_exp v)) vars

  | Values{bindings} -> 
    mapcat " \n" (fun (x,v) -> 
        sptf "val %s = %s" x (print_exp v)) bindings

  | Initialisation{i} -> sptf "initializer %s" (print_exp i)

  | Operations{ops} -> failwith "print values todo"

let rec print_ty ty =

  let open Types in
  (match ty with
   | T_int -> "int"
   | T_bool -> "bool"
   | T_string -> "string"
   | T_range -> "(int * int)"
   | T_ident{name} -> name
   | T_tuple{tys} -> if tys = [] then "unit" else mapcat " * " print_ty tys
   | T_pow{ty} -> failwith "print_ty todo"
   | T_struct {contents={fields}} -> 
     mapcat " ; " (fun (x,ty) -> sptf "%s : %s" x (print_ty ty)) fields
   | T_alpha v -> print_vartype ~prefix:"'a" !v 
   | T_operation {tyOut;tyArgs} -> 
     mapcat "ref -> " print_ty tyOut ^ " ref -> " 
     ^ mapcat " -> " print_ty tyArgs ^ " -> unit"
   | T_arrow {tyArgs;ty} -> 
     mapcat " -> " print_ty tyArgs ^ " -> " ^ print_ty ty
   | T_unit 
   | T_machine _ -> assert false
  )
  and print_vartype ~prefix = function
  |  Types.Unknown n -> prefix ^ string_of_int n
  | Types.Instanciated t -> print_ty t

let rec print_decl ?(lvl=0) d =
  indent lvl @@
  match d with
  | D_comment{s} -> sptf "(* %s *)" s 
  | TyVariantDecl {x;enum} -> sptf "type %s = %s" x (String.concat " | " enum)
  | Let{p;e} -> sptf "let %s = %s" (print_patern p) (print_exp e)
  | VoidExp{e} -> sptf "let () = %s" (print_exp e)
  | LetFun{x;args;e} -> sptf "let %s %s = %s" x (mapcat " " print_patern args) (print_exp e)
  | LetFunRec funs -> 
    sptf "let rec " ^ 
    (mapcat "\n\tand " (fun Target.{x;args;e} -> 
                             sptf "%s %s = \n\t %s" 
                                 x 
                                 (mapcat " " print_patern args) 
                                 (print_exp e))) 
              funs
  | TyRecordDecl {bound_variables;name;fields} -> 
    (match fields with 
     | [] -> "()" 
     | _ ->
       let pre_paren = match bound_variables with 
         | [] -> false
         | [x] -> false
         | xs -> true in
       let pre = parenthesized  pre_paren @@ 
         mapcat "," (fun n -> print_ty Types.(T_alpha n)) bound_variables in
       let body = 
         let string_of_field (RecordField{x;ty;mutability}) =
           let mutable_flag = if mutability then "mutable " else "" in
           sptf "%s%s : %s" mutable_flag x (print_ty ty) 
         in 
         mapcat " ; " string_of_field fields 
       in
       sptf "type %s %s = { %s }" pre name body)

  | ModuleDecl{module_name;structure} -> 
    sptf "module %s = struct\n%s\nend" module_name 
      (print_decls ~lvl:(lvl+1) structure)

  | ModuleAliasDecl{alias;module_name} ->
    sptf "module %s = %s" alias module_name
  | FunctorDecl{functor_name;parameters;structure} ->
    sptf "module %s %s = %s" functor_name (mapcat "" (fun (x,s) -> sptf "(%s : %s)" x (print_signature ~lvl:(lvl+1) s)) parameters)
    (print_structure ~lvl:(lvl+1) structure)
  | FunctorApp{module_name;functor_name;parameters} -> 
    sptf "module %s = %s %s"  module_name functor_name (mapcat "" (fun s -> sptf "(%s)" @@ print_structure ~lvl:(lvl+1) s)parameters)
  | IncludeModule{module_name} -> sptf "include %s" module_name
  | OpenModule{module_name} -> sptf "open %s" module_name
  | IncludeFunctorApp{functor_name;parameters} -> sptf "include %s %s" functor_name (mapcat "" (fun s -> sptf "(%s)" @@ print_structure ~lvl:(lvl+1) s)parameters)
and print_signature ?(lvl=0) s = match s with [] -> "sig end" | _ -> "sig " ^ mapcat " " (fun (x,ty) -> sptf "val %s : %s" x (print_ty ty)) s ^" end"
and print_structure ?(lvl=0) s = match s with [] -> "struct end" | _ -> "\n"^indent lvl "struct\n" ^ print_decls ~sep:"" ~lvl:(lvl+1) s ^"\n"^indent lvl "end"
and print_decls ?(sep=" ;;\n") ?(lvl=0) decls = 
  mapcat " \n" (fun d -> 
      print_decl ~lvl d ^ match d with 
      | D_comment _ -> "" 
      | _ -> sep) decls

and print_patern = function
 | PLiteral k -> print_literal k
 | PVar name -> name
 | PNuplet [] -> "()"
 | PNuplet ps -> mapcat "," print_patern ps;;



