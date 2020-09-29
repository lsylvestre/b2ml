type 'a loc = {loc:Err.pos; desc:'a} 

let mkloc loc desc = 
  let loc = Err.make_position loc in 
  {loc;desc} 

type term = term_desc loc
and term_desc = 
  | Const of {k:const}
  | Ident of {xr:ident_ren}
  | Array_access of {xr:ident_ren;idxs:term list}
  | Record_access of {a:term;x:ident}
  | Record_create of {assocs:(ident option * term) list}
  | AppUnOp of {op:unop;a:term}
  | AppBinOp of {op:binop;a1:term;a2:term}
  | TermOfCondition of {c:condition}
  | B_array of {arr:b_array}
  | MLIdent of {x:ident}

and const = 
  | Int of integer_lit
  | Bool of bool
  | String of string
and integer_lit = 
  | Num of string 
  | Max_int 
  | Min_int

and ident = string
and ident_ren = Id_ren of {x:ident;r:ident list}

and unop = Uminus | Succ | Pred
and binop = Add | Sub | Mul | Div | Mod | Pow

and range = Range_as_ident of ident 
          | Range_as_interval of interval
          | Range_as_set of (term list)

and interval = Interval of (term * term)
             | AliasInterval of {name:set_interval}
and set_interval = SetInt | SetNat | SetNat1
and b_array = B_array_ext of {maplets:(term list * term) list}
            | B_array_init of range list * term

and condition = condition_desc loc
and condition_desc =
  | Compare of {op:comparator;a1:term;a2:term}
  | And of {c1:condition;c2:condition}
  | Or of {c1:condition;c2:condition}
  | Not of {c:condition}
and comparator = Eq | Neq | Lt | Gt | Le | Ge


type instruction = instruction_desc loc
and instruction_desc =
  | Skip
  | Assign of {xr:ident_ren;a:term} 
  | Array_assign of {xr:ident_ren;idxs:term list;a:term}
  | Record_assign of {xr:ident_ren;xs:ident list;a:term}
  | Block of {i:instruction}
  | Var of {xs:ident annot list;i:instruction}
  | Call of {outs:ident_ren annot list;op:ident_ren;args:term list}
  | Seq of {i1:instruction;i2:instruction}
  | If of {c0:condition;i0:instruction;cases:(condition * instruction) list;others:instruction option}
  | Case of {a:term;cases:(const list * instruction) list;others:instruction option}
  | Assert of {c:condition;i:instruction}
  | While of {c:condition;i:instruction}

  | Print_int of {a:term} (* pour le debug *)
  | Print_type of {a:term}
  | Ill_typed of {a:term}

and 'a annot = {y:'a;ty:Types.t}

let mk_annot y = {y;ty=Types.(Alpha (fresh_variable ()))}  

type set = 
  | SetIdent of {x:ident}
  | DefSet of {x:ident;enum:ident list} 

type bindings_ty = (ident * Types.t) list

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

and bindings = (ident * value) list
and value = TermValue of term
          | IntervalValue of interval

and operationB0 = {h:header_operation;i:instruction}

and header_operation = { return: ident annot list;
                         name: ident_ren;
                         args: ident annot list }

let string_of_ident_ren xr = 
  match xr with
  | Id_ren {x;r=[]} -> x
  | Id_ren {x;r} -> String.concat "." r ^ "." ^ x

let x2xr ?(r=[]) x = Id_ren{x;r}