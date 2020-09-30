(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* syntaxe abstraite d'un sous-ensemble d'OCaml *)

type name = string

type vartype = Var | Cst

(** une expression est un calcul "pure" qui retourne une valeur *)

type const = 
  | ML_C_unit
  | ML_C_int of string 
  | ML_C_bool of bool 
  | ML_C_string of string
  | ML_C_variant of string
  | ML_C_empty_array
  | ML_C_alpha of int
  | ML_C_name of string (* eg. max_int *)
  | ML_C_poly
  
and binop = Add | Sub | Mul | Div | Pow | And 
          | Or | Mod | Eq | Neq | Le | Ge | Lt | Gt
          | SetRef

and unop = Neg | Succ | Pred | Not | Deref 

and exp = 
  (* constante litterale *)
    ML_E_literal of {k:const}
  (* construit un n-uplet (e1,e2,e3) *)
  | ML_E_tuple of {es:exp list}
  (* applique l'opérateur binaire [op] aux expressions [e1] et [e2] *)
  | ML_E_app_binop of {op:binop;e1:exp;e2:exp}
  (* applique l'opérateur unaire [op] à l'expression [e] *)
  | ML_E_app_unop of {op:unop;e:exp}

  | ML_E_app of {e:exp;args:exp list}

  | ML_E_fun of {x:name;e:exp}
  | ML_E_let_in of {x:name;e1:exp;e2:exp}
  | ML_E_name of {x:name}
  | ML_E_open_module_in of {module_name:name;e:exp}
  (* construit un record {x1=v1;x2=v2;...} *)
  | ML_E_record of {assocs:(name * exp) list}
  (* accède au champs [x] du record [e] *)
  | ML_E_get_field of {e:exp;x:name}
  (* .........; du record [e] avec champs [x] vallant [v] *)
  | ML_E_set_field of {e:exp;xs:name list;v:exp}
  | ML_E_array_create of {es:exp list}
  | ML_E_array_access of {e:exp;k:exp}
  | ML_E_skip
  (* sequence *)
  | ML_E_seq of {es:exp list}
  (* alternative *)
  | ML_E_if of {c:exp;e1:exp;e2:exp}
  (* boucle *)
  | ML_E_while of {c:exp;e:exp}
  (* déclaration de variables locales *)
  | ML_E_var of {vars:(name * exp) list;e:exp}
  (* assigne la valeur [v] à la [k]-ième des [nb_gv] variables globales *)
  | ML_E_assign of {xr:Ast.ident_ren;v:exp;vartype:vartype}
  | ML_E_array_assign of {xr:Ast.ident_ren;e:exp; es:exp list; v:exp}

  | ML_E_match of {e:exp;cases:(const_when list * exp) list;others:exp option}

  | ML_E_assert of {c:exp;e:exp}
  | ML_E_print_int of {e:exp}

and const_when = {k:const;w:exp option}
and valuation = Valuation of {k:int;e:exp}

type set = {x:name;enum:name list}
type clause = 
  (* déclaration et valuation de constantes *)
  | Values of {bindings:(Ast.ident * exp) list}
  (* déclaration de variables globales *)
  | Variables of {vars:(name * exp) list}
  (* initialisation des variables globales *)
  | Initialisation of {i:exp}

  (* déclaration d'opérations *)
  | Operations of {ops:operation list}

and operation = {op:name;args:name list;outs:name list;i:exp}

type decl = 
  | D_comment of {s:string}
  | TyVariantDecl of {x:name;enum:name list}
  | TyRecordDecl of {bound_variables:Types.vartype ref list;
                     name:name;
                     fields:ty_record_field list}
  | Let of {p:patern;e:exp}
  | VoidExp of {e:exp}
  | LetFun of letfun
  | LetFunRec of letfun list
  | ModuleDecl of {module_name:name;structure: structure}
  | ModuleAliasDecl of {alias:name;module_name:name}
  | FunctorDecl of {functor_name:name;parameters:(name * signature) list;structure:structure}
  | FunctorApp of {module_name:name;functor_name:name;parameters:structure list}
  | IncludeFunctorApp of {functor_name:name;parameters:structure list}
  | IncludeModule of {module_name:name}
  | OpenModule of {module_name:name}

and patern = PLiteral of const | PVar of name | PNuplet of patern list

and signature = (name * Types.t) list
and structure = module_component list
and letfun = {x:name;args:patern list;e:exp}

and ty_record_field = RecordField of {x:name;ty:Types.t;mutability:bool}

and module_component = decl
