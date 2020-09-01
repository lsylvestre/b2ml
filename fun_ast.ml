
type name = string

type vartype = GV | LV | CST | OP | Arg_in | Arg_out

(** une expression est un calcul "pure" qui retourne une valeur *)
type exp = 
  (* constante litterale *)
    Literal of {k:const}
  (* construit un n-uplet (e1,e2,e3) *)
  | Nuplet of {es:exp list}
  (* applique l'opérateur binaire [op] aux expressions [e1] et [e2] *)
  | AppBinOp of {op:binop;e1:exp;e2:exp}
  (* applique l'opérateur unaire [op] à l'expression [e] *)
  | AppUnOp of {op:unop;e:exp}
  (* applique l'expression [e1] à l'expression [e2] *)
  | App of {e1:exp; e2:exp}
  (* construit un record {x1=v1;x2=v2;...} *)
  | Record of {assocs:(name * exp) list}
  (* accède au champs [x] du record [e] *)
  | GetField of {e:exp;x:name}
  (* construit une copie du record [e] avec champs [x] vallant [v] *)
  | UpdateField of {e:exp;x:name;v:exp}
  (* construit une liste d'association [(k1,v1);(k2,v2)....] *)
  | AList of {assocs:(exp * exp) list}
  (* accès à une valeur dans une liste d'association. 
     Les valeurs (resp. les clés) doivent toutes avoir le même type. *)
  | Assoc of {e:exp;k:exp}
  | Acons of {e:exp; k:exp; v:exp}
  (* accède à la [k]-ième variable locale (resp. globale) en indice de Debruin.
     La variable locale (resp. globale) la plus récement déclaré à l'indice 0. *)
  | Access of {k:int;vartype:vartype}

  | Let of {n:int;e1:exp;e2:exp}
  | Name of {n:int}


and const = 
    Int of string 
  | Bool of bool 
  | String of string
  | Variant of string

and binop = Add | Sub | Mul | Div | Pow | And 
          | Or | Mod | Eq | Neq | Le | Ge | Lt | Gt

and unop = Neg | Succ | Pred | Not

(** une ctx_exp est une fonction 
    qui étant donné un état mémoire calcule une expression et retourne sa valeur *)
type ctx_exp = Exp of {e:exp}

(** valuation *)

type valuation = Valuation of {k:int;e:ctx_exp}

(** chaque instruction est une fonction 
    qui étant donné un état mémoire produit un nouvel état mémoire *)
type inst = 
  (* skip : ne rien faire *)
    Skip
  (* sequence *)
  | Seq of {is:inst list}
  (* alternative *)
  | If of {c:ctx_exp;i1:inst;i2:inst}
  (* boucle *)
  | While of {c:ctx_exp;i:inst}
  (* déclaration de variables locales *)
  | Var of {frame_size:int;i:inst}
  (* assigne la valeur [v] à la [k]-ième des [nb_gv] variables globales *)
  | Assign of {k:int;v:ctx_exp;vartype:vartype}

  | Case of {e:ctx_exp;cases:(const list * inst) list;others:inst option}

  | Assert of {c:ctx_exp;i:inst}
  | Call of {op:int;args:exp list}
  (* empile un argument *)
  | Arg of {k:int;i:inst}

  | Print_int of {e:exp}

type set = {x:name;enum:name list}
type clause = 
  (* déclaration et valuation de constantes *)
  | Values of {bindings:(int * ctx_exp) list}
  (* déclaration de variables globales *)
  | Variables of {frame_size:int}
  (* initialisation des variables globales *)
  | Initialisation of {i:inst}
  (* déclaration d'opérations *)
  | Operations of {ops:operation list}

and operation = {op:int;nb_args:int;nb_out:int;i:inst}

type decl = 
  | Main of {compositions:name list}
  | Decl of {name:name;c:clause} 
  | TyVariantDecl of {x:name;enum:name list}
  | TyRecordDecl of {bound_variables:Types.vartype ref list;
                     name:name;
                     fields:ty_record_field list}

and ty_record_field = RecordField of {x:name;ty:Types.t}

