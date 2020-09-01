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
  | Unit -> "()"
  | Int n -> n
  | Bool b -> if b then "true" else "false" 
  | String s -> sptf "\"%s\"" s
  | Variant name -> name
  | AlphaWitness n -> sptf "(__alpha__ : 'a%d)" n
  | EmptyArray -> "[||]"
let print_ident_ren (x,_) = x (* TODO !! *)

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

  | App {e;args} -> (* assert (List.length args > 0); *)
    parenthesized paren @@ 
    sptf "%s %s" (print_exp ~paren:true e) (match args with [] -> "()" | _ -> mapcat " " (fun e -> print_exp ~paren:true e) args)
  | Fun{x;e} -> parenthesized paren @@ sptf "fun %s -> %s" x (print_exp e)
  | LetIn {x:name;e1:exp;e2:exp} -> 
    parenthesized paren @@ 
    sptf "let %s = %s in\n%s" x (print_exp e1) (print_exp e2)
  | Name{x} -> x
  | OpenModuleIn{module_name;e} -> sptf "%s.%s" module_name (print_exp ~paren:true e)
  | AppMth{o;m;args} -> (match args with 
        [] -> sptf "%s#%s" o m 
      | l -> parenthesized paren @@ 
        sptf "%s#%s %s" o m (mapcat " " (fun e -> print_exp ~paren:true e) args))
  | SetAtt{att;e} -> parenthesized paren @@ 
    sptf "%s <- %s" att (print_exp e)

  | Record {assocs} -> 
    sptf "{%s}" @@ 
    mapcat ";" (fun (field,e) -> sptf "%s=%s" field (print_exp e)) assocs

  | GetField {e;x} -> 
    sptf "%s.%s" (print_exp ~paren:true e) x

  | SetField {e;xs;v} -> 
    sptf "%s.%s <- %s" (print_exp ~paren:true e) (String.concat "." xs) (print_exp v)

  | ArrayCreate {es} -> "[|" ^ mapcat ";" print_exp es ^"|]"
  | Array_access{e;k} -> sptf "%s.(%s)" (print_exp ~paren:true e) (print_exp k)
  | Skip -> "()"
  | Block {e} -> print_exp ~paren:true e
  | Seq{es} -> 
    parenthesized paren @@ 
    (* (match is with 
       | [] | [_] -> assert false
       | _ ->  *)
    mapcat ";\n" (fun e -> print_exp e) es

  | If{c;e1;e2} -> 
    parenthesized paren @@ 
    sptf "if %s then %s\nelse %s" 
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e1) 
      (print_exp ~paren:true e2)

  | While{c;e} -> 
    parenthesized paren @@ 
    sptf "while %s do %s done" 
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e)

  | Var{vars;e} -> 
    (match vars with 
     | [] -> print_exp  ~paren:paren e
     | _ ->
       parenthesized paren @@
       sptf "let %s in\n%s" (mapcat "\nand " (fun (x,v) -> 
           sptf "%s = ref %s" x (print_exp ~paren:true v)) vars)
         (print_exp e))

  | Assign{xr;v;vartype} ->
    (match vartype with 
     | LV -> sptf "%s := %s"
     | _ -> sptf "%s <- %s") (print_ident_ren xr)  (print_exp v)

  | Array_assign{e;es;v} -> 
    parenthesized paren @@
    sptf "%s.(%s) <- %s" (print_exp ~paren:true e) (mapcat ").(" print_exp es) (print_exp v)

  | Assert {c;e} -> 
    parenthesized paren @@
    sptf "assert %s; %s"
      (print_exp ~paren:true c) 
      (print_exp ~paren:true e)

  | Case{e;cases=lp;others} -> 
    parenthesized paren @@
    sptf "match %s with\n| %s\n| _ -> %s" (print_exp e)
      (mapcat "\n| "
         (fun (cs,i) ->
            (sptf "%s -> %s")  (mapcat "| " print_literal cs) (print_exp i)) lp)
      (match others with None -> "()" | Some i -> (print_exp i))

  | New{class_name} -> parenthesized paren ("new " ^ class_name)
  | Print_int{e} -> 
    parenthesized paren @@ 
    sptf "print_int %s" (print_exp ~paren:true e)

(* clause *)

(*   let state_eta_expansion = sptf "fun s -> %s s"  ................ *)

let print_clause ?(paren=false) = function

  | Variables{vars} ->
    mapcat " \n" (fun (x,v) -> 
        sptf "val mutable %s = %s" x (print_exp v)) vars

  | Values{bindings} -> 
    mapcat " \n" (fun (x,v) -> 
        sptf "val %s = %s" x (print_exp v)) bindings

  | Initialisation{i} -> sptf "initializer %s" (print_exp i)

  | Operations{ops} -> failwith "print values todo"

let print_class_component ?(lvl=0) c = 
  indent lvl @@
  match c with
  | MutableAttribute{x;default} -> sptf "val mutable %s = %s" x (print_exp default)
  | Attribute{x;e} -> sptf "val %s = %s" x (print_exp e)
  | Mth{m;local;args;body} ->  let args = match args with [] ->  "" | l -> String.concat " " l ^ " " in
    sptf "method %s%s %s= %s" (if local then "private " else "") m  args (print_exp body)
  | Init{i} -> sptf "initializer %s" (print_exp i)
  | Inherit{mchs} -> mapcat "\n" (fun ((x,r),es) ->
      let args =  match es with [] ->  "" | l -> mapcat " " (fun e -> print_exp ~paren:true e) l in
      match r with 
      | None -> sptf "inherit %s %s%s" x args (match es with [] -> "" | _ -> sptf " as %s" x)
      | Some [y] -> sptf "inherit %s %s as %s" y args x
      | _ -> failwith "todo renommage multiple") mchs
  | CC_comment{s} -> sptf "(* %s *)" s 


let rec print_ty ty =

  let open Types in
  (match ty with
   | Int -> "int"
   | Bool -> "bool"
   | String -> "string"
   |Ident{name} -> name
   | Tuple{tys} -> if tys = [] then "unit" else mapcat " * " print_ty tys
   | Pow{ty} -> failwith "print_ty todo"
   | Struct {contents={fields}} -> mapcat " ; " (fun (x,ty) -> sptf "%s : %s" x (print_ty ty)) fields
   | Alpha v -> print_vartype ~prefix:"'a" !v 
   | Operation _ -> failwith "print_ty todo"
   | Unit | Machine _ -> assert false
  )
  and print_vartype ~prefix = function
  |  Types.Unknown n -> prefix ^ string_of_int n
  | Types.Instanciated t -> print_ty t

let print_class_local_decl ?(lvl=0) d =
  indent lvl @@ 
  match d with
  | CLD_comment{s} -> sptf "(* %s *)" s 
  | ClassLetIn{x;e} -> sptf "let %s = %s in" x (print_exp e)

let rec print_decl ?(lvl=0) d =
  indent lvl @@
  match d with
  | D_comment{s} -> sptf "(* %s *)" s 
  | TyVariantDecl {x;enum} -> sptf "type %s = %s" x (String.concat " | " enum)
  | Let{p;e} -> sptf "let %s = %s" (print_patern p) (print_exp e)
  | VoidExp{e} -> sptf "let () = %s" (print_exp e)
  | LetFun{x;args;e} -> sptf "let %s %s = %s" x (mapcat " " print_patern args) (print_exp e)
  | ClassDecl{class_name;parameters;class_local_decls;class_components} ->
    (let r = ref "" in
     r := !r ^ (sptf "class %s %s=\n%s" 
                  class_name (match parameters with 
                      | [] -> "" 
                      | args -> (mapcat " " (fun Ast.{y;ty} -> sptf "(%s : %s)" y (print_ty ty)) args) ^ " ") 
                  (mapcat "" (fun d -> sptf "%s\n" @@ print_class_local_decl ~lvl:(lvl+1) d) class_local_decls));
     r := !r ^ (indent (lvl+1) "object (self)\n"); 
     List.iter (fun c -> r := !r ^ (print_class_component ~lvl:(lvl+2) c |> Printf.sprintf "%s\n")) class_components;
     r := !r ^ "  end";
     !r)
  | ClassAliasDecl{alias;parameters;class_name} ->
    sptf "class %s %s= %s" alias (match parameters with [] -> "" | l -> (String.concat " " l) ^ " ") class_name

  | TyRecordDecl {bound_variables;name;fields} -> 
    (match fields with 
     | [] -> "()" 
     | _ ->
       let pre_paren = match bound_variables with 
         | [] -> false
         | [x] -> false
         | xs -> true in
       let pre = parenthesized  pre_paren @@ 
         mapcat "," (fun n -> print_ty Types.(Alpha n)) bound_variables in
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



