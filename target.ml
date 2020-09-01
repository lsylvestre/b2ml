
type name = string

type vartype = GV | LV | CST | OP | Arg_in | Arg_out

(** une expression est un calcul "pure" qui retourne une valeur *)

type const = 
  | Unit
  | Int of string 
  | Bool of bool 
  | String of string
  | Variant of string
  | EmptyArray
  | AlphaWitness of int 

and binop = Add | Sub | Mul | Div | Pow | And 
          | Or | Mod | Eq | Neq | Le | Ge | Lt | Gt
          | SetRef

and unop = Neg | Succ | Pred | Not | Deref 

and exp = 
  (* constante litterale *)
    Literal of {k:const}
  (* construit un n-uplet (e1,e2,e3) *)
  | Nuplet of {es:exp list}
  (* applique l'opérateur binaire [op] aux expressions [e1] et [e2] *)
  | AppBinOp of {op:binop;e1:exp;e2:exp}
  (* applique l'opérateur unaire [op] à l'expression [e] *)
  | AppUnOp of {op:unop;e:exp}

  | App of {e:exp;args:exp list}

  | AppMth of {o:name;m:name;args:exp list}
  | SetAtt of {att:name;e:exp}
  
  | Fun of {x:name;e:exp}
  | LetIn of {x:name;e1:exp;e2:exp}
  | Name of {x:name}
  | OpenModuleIn of {module_name:name;e:exp}
  (* construit un record {x1=v1;x2=v2;...} *)
  | Record of {assocs:(name * exp) list}
  (* accède au champs [x] du record [e] *)
  | GetField of {e:exp;x:name}
  (* .........; du record [e] avec champs [x] vallant [v] *)
  | SetField of {e:exp;xs:name list;v:exp}
  | ArrayCreate of {es:exp list}
  | Array_access of {e:exp;k:exp}
  | Skip
  | Block of {e:exp}
  (* sequence *)
  | Seq of {es:exp list}
  (* alternative *)
  | If of {c:exp;e1:exp;e2:exp}
  (* boucle *)
  | While of {c:exp;e:exp}
  (* déclaration de variables locales *)
  | Var of {vars:(name * exp) list;e:exp}
  (* assigne la valeur [v] à la [k]-ième des [nb_gv] variables globales *)
  | Assign of {xr:Ast.ident_ren;v:exp;vartype:vartype}
  | Array_assign of {xr:Ast.ident_ren;e:exp; es:exp list; v:exp}

  | Case of {e:exp;cases:(const list * exp) list;others:exp option}

  | Assert of {c:exp;e:exp}
  | New of {class_name:name}
  | Print_int of {e:exp}

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

type class_local_decl = 
| CLD_comment of {s:string}
| ClassLetIn of {x:name;e:exp}

type decl = 
  | D_comment of {s:string}
  | TyVariantDecl of {x:name;enum:name list}
  | TyRecordDecl of {bound_variables:Types.vartype ref list;
                     name:name;
                     fields:ty_record_field list}
  | Let of {p:patern;e:exp}
  | VoidExp of {e:exp}
  | LetFun of {x:name;args:patern list;e:exp}
  | ClassDecl of {class_name:name;
                  parameters:name Ast.annot list;
                  class_local_decls:class_local_decl list;
                  class_components:class_component list}
  | ClassAliasDecl of {alias:name;parameters:name list;class_name:name}
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
and letfun = {x:name;args:name list;e:exp}

and ty_record_field = RecordField of {x:name;ty:Types.t;mutability:bool}

and module_component = decl

and class_component = 
  | Attribute of {x:name;e:exp}
  | MutableAttribute of {x:name;default:exp}
  | Mth of {m:name;local:bool;args:name list;body:exp}
  | Init of {i:exp}
  | Inherit of {mchs:(Ast.ident_ren * exp list) list}
  | CC_comment of {s:string}
