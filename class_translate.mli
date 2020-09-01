type name = string

type env

val init_env : env

val env_extends : 
  env:env -> vartype:Target.vartype -> idents:Ast.ident_ren list -> env

val env_add_record_declaration : env:env -> field_names:name list -> env

val env_add_record_declaration : env:env -> field_names:name list -> env

val default_value : env:env -> ty:Types.t -> Target.exp

val rw_ident_ren : ?loc:Err.pos -> env:env -> Ast.ident_ren -> Target.exp

val rw_constant : k:Ast.const -> Target.const 

val rw_unop : op:Ast.unop -> Target.unop

val rw_binop : op:Ast.binop -> Target.binop

val rw_terms : env:env -> terms:Ast.term list -> (Target.exp list * env) 

val rw_term : env:env -> term:Ast.term -> (Target.exp * env) 

val rw_comparator : op:Ast.comparator -> Target.binop

val rw_condition : env:env -> cond:Ast.condition -> (Target.exp * env)

val rw_instruction : env:env -> inst:Ast.instruction -> (Target.exp * env)

type clause_result = { decls_before : Target.decl list;
                       class_local_decls : Target.class_local_decl list;
                       class_components : Target.class_component list;
                       env:env }

val rw_clause : 
  env:env -> component_name:Ast.ident -> clause:Ast.clause -> clause_result 

val rw_component : env:env -> component:Ast.component -> (Target.decl list * env)

val record_declarations : env:env -> Target.decl list

val rw_program : components:Ast.component list -> Target.decl list

val translate : components:Ast.component list -> string
