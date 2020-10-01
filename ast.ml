(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* syntaxe abstraite de B0 *)

type 'a loc = {loc:Err.pos; desc:'a} 

type 'a annot = {y:'a; ty:Types.t}

let mkloc loc desc = 
  let loc = Err.make_position loc in 
  {loc;desc}

let mk_annot y = {y;ty=Types.(T_alpha (fresh_variable ()))}  

type ident = string
type ident_ren = Id_ren of {x:ident;r:ident list}

let string_of_ident_ren xr = 
  match xr with
  | Id_ren {x;r=[]} -> x
  | Id_ren {x;r} ->
    String.concat "." r ^ "." ^ x

let x2xr ?(r=[]) x =
  Id_ren {x;r}

type integer_lit = 
  | Num of string 
  | Max_int 
  | Min_int

type const = 
  | C_int of integer_lit
  | C_bool of bool
  | C_string of string

type unop = Uminus | Succ | Pred
type binop = Add | Sub | Mul | Div | Mod | Pow

type term = term_desc loc
and term_desc =
  (* constante littérale (eg. 3, MAXINT, "foo", TRUE) *)
  | A_const of {k:const}
  (* identificateur (eg. x, r.x, r1.r2.x) *)
  | A_ident of {xr:ident_ren}
  (* accès à un champ de tableau ou appel de primitive (eg. x(a1,a2,a3).
     NB: la syntaxe concrète ne permet pas de différencier tableau et primitive. 
     La distinction est possible après inférence de type :
     l'identificateur xr est annoté par son type *)
  | A_app of {xr:ident_ren annot;idxs:term list}
  (* appel d'opérateur unaire *)
  | A_app_unop of {op:unop;a:term}
  (* appel d'opérateur binaire *)
  | A_app_binop of {op:binop;a1:term;a2:term}
  (* création d'une valeur enregistrement. 
     NB : En B, le nom de champ est optionnel. 
     (C'est un point assez marginal car il n'est pas possible accéder 
      à un champ au cours du programme si son nom n'est pas donné lors 
      de la création de la valeur enregistrement) *)
  | A_Range of {a1:term;a2:term}
  | A_record_create of {assocs:(ident option * term) list}
  (* accès à un champ d'enregistrement *)
  | A_record_access of {a:term;x:ident}
  (* conversion condition -> term *)
  | A_of_condition of {c:condition}
  (* création d'une valeur tableau *)
  | A_array of {arr:b_array}

and b_array =
  | B_array_ext of {maplets:(term list * term) list}
  | B_array_init of term list * term

and condition = condition_desc loc
and condition_desc =
  | Compare of {op:comparator;a1:term;a2:term}
  | And of {c1:condition;c2:condition}
  | Or of {c1:condition;c2:condition}
  | Not of {c:condition}
and comparator = Eq | Neq | Lt | Gt | Le | Ge


type instruction = instruction_desc loc
and instruction_desc =
  (* instruction "ne rien faire" *)
  | I_skip
  (* séquence *)
  | I_seq of {i1:instruction;
              i2:instruction}
  (* affectation *)
  | I_assign of {xr:ident_ren;
                 a:term} 
  (* affectation dans un tableau *)
  | I_array_assign of {xr:ident_ren;
                       idxs:term list;
                       a:term}
  (* affectation d'un champ d'enregistrement *)
  | I_record_assign of {xr:ident_ren;
                        xs:ident list;
                        a:term}
  (* déclaration de variable locale *)
  | I_var of {xs:ident annot list;
              i:instruction}
  (* appel d'opération *)
  | I_call of {outs:ident_ren annot list;
               op:ident_ren;
               args:term list}
  (* conditionnelle *)
  | I_if of {c0:condition;
             i0:instruction;
             cases:(condition * instruction) list;
             others:instruction option}
  | I_case of {a:term;
               cases:(const list * instruction) list;
               others:instruction option}
  (* assertion *)
  | I_assert of {c:condition;
                 i:instruction}
  (* boucle tant-que *)
  | I_while of {c:condition;
                i:instruction}
  (* pour debug *)
  | Debug_print_int of {a:term}
  | Debug_print_type of {a:term}
  | Debug_ill_typed of {a:term}

type set = 
  | SetIdent of {x:ident}
  | DefSet of {x:ident;enum:ident list} 

type bindings_ty = (ident * Types.t) list

type ('a,'b) either = Left of 'a | Right of 'b
type component = component_desc loc
and component_desc = 
  | Component of {name:ident;
                  component_type:component_type;  
                  parameters:ident annot list;
                  clauses:clause list}
and component_type = 
  | Abstract_machine 
  | Refinement of {component_name:ident} 
  | Implementation of {component_name:ident}

and clause = clause_desc loc
and clause_desc = 
  | Sees of {mchs:ident_ren list}
  | Promotes of {mchs:ident_ren list}

  | Inclusion of {mchs_init:(ident_ren * term list) list}

  | Uses of {mchs:ident_ren list}  (* non utilisé ? *)
  | Sets of {sets:set list}
  | Concrete_constants of {cs:ident list} (* non utilisée, cf. value *)
  | Values of {bindings:bindings}
  | Concrete_variables of {xs:ident_ren annot list} (* non empty *)
  | InitialisationB0 of {i:instruction}
  | OperationsB0 of {ops:operationB0 loc list;local:bool}

and envTy = (ident_ren*Types.t) list loc
and bindings = (ident * value) list
and value = term

and operationB0 = {h:header_operation;i:instruction}

and header_operation = { return: ident annot list;
                         name: ident_ren;
                         args: ident annot list }

and component_or_envTy = (component,envTy) either

type vartype = Var | Cst

let initEnvTy = ref ([] : (ident_ren * vartype * Types.t) list)
let initMchs = ref ([] : ident list)