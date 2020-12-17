/*****************************************/
/** B2ML, un traducteur de B vers OCaml **/
/** ----------------------------------- **/
/** septembre 2020                      **/
/** loic.sylvestre@etu.upmc.fr          **/
/*****************************************/

/* analyse syntaxique */

%{
  open Ast
  open Err

  let none_is_empty_list = function 
      None -> [] 
    | Some l -> l
%}

%token PRINT_INT PRINT_TYPE ILL_TYPED AMPERSAND QUOTE LPAREN RPAREN STAR 
%token STAR_STAR PLUS COMMA MINUS DOT DOT_DOT SLASH SLASH_EQ COL COL_EQ 
%token SEMICOL LT LT_MINUS_MINUS LT_EQ EQ GT GT_EQ LCURLY PIPE_MINUS_GT RCURLY
%token ASSERT BEGIN /* BOOL */ CASE CONCRETE_CONSTANTS CONCRETE_VARIABLES 
%token CONSTANTS DO EITHER ELSE ELSIF END EXTENDS FALSE IF IMPLEMENTATION 
%token IMPORTS IN INCLUDES INITIALISATION INT LOCAL_OPERATIONS MACHINE MAXINT 
%token MININT NAT NAT1 OF OPERATIONS OR POW PROMOTES REFINES REFINEMENT
%token SEES SETS PRE THEN TRUE USES VALUES VAR VARIANT WHILE Bool Mod Not Or Pred
%token Rec Skip Struct Succ 

%token EOF
%token <Ast.ident> IDENT        /* identificateurs */
%token <string> INT_LITERAL     /* constantes numériques */
%token <string> STRING_LITERAL  /* Chaînes de caractères */   

/* supports pour l'intéropérabilité avec OCaml (ce n'est pas du B classique) */
%token EXTERNAL T_BOOL T_STRING T_OPERATION MINUS_MINUS_GT


%start <Ast.component option> component_eof

%left SEMICOL /* 20 */
%left AMPERSAND Or /* 40 */

/* %left EQ*/ /* 60 */
/* %left SLASH_EQ LT LT_EQ GT GT_EQ */ /* 160 */

%left DOT_DOT /* 170 */
%left PLUS MINUS /* 180 */
%left STAR SLASH Mod /* 190 */
%right STAR_STAR /* 200 */
%nonassoc below_UMINUS /* 210 */
/*%right DOT*/ /* 220 */
%left QUOTE /* 250 */

%%

%inline plist(X):
| xs = loption(delimited(LPAREN, separated_nonempty_list(COMMA, X), RPAREN)) { xs }


let parenthesized (x) ==
  y=delimited(LPAREN,x,RPAREN); { y }

/* Axiome */

component_eof: 
| m=component EOF { m }
| error EOF { syntax_error (make_position $loc)}

component: 
| c=abstract_machine 
| c=refinement 
| c=implementation 
  {Some c}
| externals 
  {None}

abstract_machine: 
| MACHINE name=IDENT parameters=plist(IDENT) cs=clause_abstract_machine* END
  { let parameters = List.map mk_annot parameters in 
    let cs = List.filter_map (fun x -> x) cs in
    mkloc $loc @@ Component{name;parameters;component_type=Abstract_machine;clauses=cs} }
| MACHINE IDENT plist(IDENT) error 
  { syntax_error (make_position $loc)}

clause_abstract_machine:
| c=clause_sees
| c=clause_includes
| c=clause_promotes
| c=clause_extends
| c=clause_uses
| c=clause_sets
| c=clause_concrete_constants
| c=clause_concrete_variables
  {c}
| error { syntax_error (make_position $loc)}

refinement:
| REFINEMENT name=IDENT parameters=plist(IDENT) REFINES x=IDENT cs=clause_refinement* END
  { let parameters = List.map mk_annot parameters in 
    let cs = List.filter_map (fun x -> x) cs in
    mkloc $loc @@ Component{name;parameters;component_type=Refinement{component_name=x};clauses=cs} }
| REFINEMENT IDENT plist(IDENT) REFINES IDENT error 
  { syntax_error (make_position $loc)}

implementation: 
| IMPLEMENTATION name=IDENT xs=plist(IDENT) REFINES x=IDENT cs=clause_implementation* END
  { let parameters = List.map mk_annot xs in
    let cs = List.filter_map (fun x -> x) cs in
    mkloc $loc @@ Component{name;parameters;component_type=Implementation{component_name=x};clauses=cs} }
| IMPLEMENTATION IDENT plist(IDENT) REFINES IDENT error       
  { syntax_error (make_position $loc)}

clause_implementation: 
| c=clause_sees
| c=clause_imports
| c=clause_promotes
| c=clause_extends_BO
| c=clause_sets
| c=clause_concrete_constants
| c=clause_values
| c=clause_concrete_variables
| c=clause_initialisation_BO
| c=clause_operations_BO
| c=clause_local_operations
  { c }
| error { syntax_error (make_position $loc)}


clause_refinement: 
| c=clause_sees
| c=clause_includes
| c=clause_promotes
| c=clause_extends
| c=clause_sets
| c=clause_concrete_constants
| c=clause_concrete_variables
  {c}
| error { syntax_error (make_position $loc)}

multi_instantiations:
| xs=separated_nonempty_list(COMMA,pair(ident_ren,plist(instantiation))); 
    {xs}

instantiation:
| a=term {a}

clause_imports:
| IMPORTS mchs_init=multi_instantiations
  { Some (mkloc $loc @@ Inclusion {mchs_init}) }

clause_sees:
| SEES mchs=separated_nonempty_list(COMMA,ident_ren)
  { Some (mkloc $loc @@ Sees {mchs}) }

clause_includes:
| INCLUDES mchs_init=multi_instantiations
  { Some (mkloc $loc @@ Inclusion {mchs_init}) }

clause_promotes:
| PROMOTES mchs=separated_nonempty_list(COMMA,ident_ren)
  { Some (mkloc $loc @@ Promotes {mchs}) }

clause_extends:
| EXTENDS mchs_init=multi_instantiations
  { Some (mkloc $loc @@ Inclusion {mchs_init}) }

clause_extends_BO: 
| EXTENDS mchs_init=multi_instantiations
  { Some (mkloc $loc @@ Inclusion {mchs_init}) }

clause_uses: 
| USES mchs=separated_nonempty_list(COMMA,ident_ren) 
  { Some (mkloc $loc @@ Uses {mchs}) }

clause_sets: 
| SETS sets=separated_nonempty_list(SEMICOL,set)  
  { Some (mkloc $loc @@ Sets {sets}) }

set:
| x=IDENT { SetIdent{x} }
| x=IDENT EQ LCURLY enum=separated_nonempty_list(COMMA,IDENT) RCURLY
  { DefSet{x;enum}}


clause_concrete_constants:
| CONCRETE_CONSTANTS cs=separated_nonempty_list(COMMA,IDENT)
| CONSTANTS          cs=separated_nonempty_list(COMMA,IDENT)
  { Some (mkloc $loc @@ Concrete_constants {cs}) }

clause_values:
| VALUES bindings=separated_nonempty_list(SEMICOL,valuation)
  { Some (mkloc $loc @@ Values {bindings}) }

valuation:
| x=IDENT EQ t=term { (x,t) }   
| IDENT EQ error { syntax_error ~msg:"" (make_position $loc)}

clause_concrete_variables:
| CONCRETE_VARIABLES xs=separated_nonempty_list(COMMA,ident_ren)
  { let xs = List.map mk_annot xs in
    Some (mkloc $loc @@ Concrete_variables{xs}) }

clause_initialisation_BO:
| INITIALISATION i=instruction
  { Some (mkloc $loc @@ InitialisationB0{i}) }

header_operation:
| opt1=header_operation_ret
  px=ident_ren
  args=plist(IDENT)
  { let ret = none_is_empty_list opt1 in
    let ret = List.map mk_annot ret in
    let args = List.map mk_annot args in
    {return=ret;name=px;args=args} }

%inline header_operation_ret:
| { None }
| os=separated_nonempty_list(COMMA,IDENT) LT_MINUS_MINUS {Some os}

/*%inline args_operation:
 | {None}
 | LPAREN xs=separated_nonempty_list(COMMA,IDENT) RPAREN 
 {Some xs}*/

clause_operations_BO:
| OPERATIONS ops=separated_nonempty_list(SEMICOL,operation_BO)
 { Some (mkloc $loc @@ OperationsB0{ops;local=false}) }

%inline operation_BO:
| h=header_operation EQ i=level1_instruction
  { mkloc $loc @@ {h;i} }

clause_local_operations:
| LOCAL_OPERATIONS ops=separated_nonempty_list(SEMICOL,operation_BO)   /* operation (et pas operation_B0) dans le manuel */
  { Some (mkloc $loc @@ OperationsB0{ops;local=true}) }

/* Terms and Groups of exps ---------------------------- */

term:
| a=simple_term
| a=parenthesized(term)          
  {a} 
| a=expr_array_desc
| a=term_desc 
  {mkloc $loc a}


/* tableau comme sous-expression : c'est une extension par rapport à la grammaire */ 
term_desc:
| MINUS a=term %prec below_UMINUS { A_app_unop{op=Uminus;a} }
| a1=term op=binop  a2=term       { A_app_binop{op;a1;a2} }
| a1=term DOT_DOT a2=term         { A_Range{a1;a2} }
| Succ a=parenthesized(term)      { A_app_unop{op=Succ;a} }
| Pred a=parenthesized(term)      { A_app_unop{op=Pred;a} }
| xr=ident_ren idxs=parenthesized(separated_nonempty_list(COMMA,term)) 
  { A_app{xr=mk_annot xr;idxs} }
| Rec LPAREN rfds=rev_fields { A_record_create{assocs=List.rev rfds} }
| a=term QUOTE x=IDENT           { A_record_access {a;x} }

rev_fields:
| x=IDENT COL a=term RPAREN {[(Some x,a)]}
| a=term RPAREN {[(None,a)]}
| x=IDENT COL a=term COMMA rfds=rev_fields {(Some x,a) :: rfds}
| a=term COMMA rfds=rev_fields {(None,a)::rfds}

%inline binop:
| PLUS  {Add}
| MINUS {Sub}
| STAR  {Mul}
| SLASH {Div}
| Mod   {Mod}
| STAR_STAR {Pow}
simple_term:
| a=simple_term_desc { mkloc $loc @@ a}

simple_term_desc:
| xr=ident_ren   { A_ident{xr} }
| k=const_term   { A_const{k} }
| NAT      { A_Range{a1=mkloc $loc @@ A_const{k=C_int (Num "0")};
                     a2=mkloc $loc @@ A_const{k=C_int Max_int}} }
| NAT1     { A_Range{a1=mkloc $loc @@ A_const{k=C_int (Num "1")};
                     a2=mkloc $loc @@ A_const{k=C_int Max_int}} }
| INT      { A_Range{a1=mkloc $loc @@ A_const{k=C_int Min_int};
                     a2=mkloc $loc @@ A_const{k=C_int Max_int}} }
| Bool c=parenthesized(condition) { A_of_condition{c} }

const_term:   
| s=STRING_LITERAL { C_string s }
| s=INT_LITERAL    { C_int (Num s) }
| MAXINT           { C_int Max_int }
| MININT           { C_int Min_int }
| FALSE            { C_bool false }
| TRUE             { C_bool true }

/* Conditions */

condition:
| c=parenthesized(condition)  { c }
| c=condition_desc            { mkloc $loc @@ c }

condition_desc:
/* je remplace les [simple_term] par des [term] ~> accepte plus de programmes */
| a1=term op=compare a2=term
  { Compare{op;a1;a2} }
| c1=condition AMPERSAND c2=condition { And{c1;c2}}
| c1=condition Or c2=condition        { Or{c1;c2}}
| Not c=parenthesized(condition)      { Not{c} }

%inline compare:
| EQ       {Eq}
| SLASH_EQ {Neq}
| LT       {Lt}
| LT_EQ    {Le}
| GT       {Gt}
| GT_EQ    {Ge}

/* Instructions */ 
instruction: 
| i=level1_instruction {i}
| i1=instruction SEMICOL i2=instruction
  { mkloc $loc @@ I_seq{i1;i2} }
| instruction SEMICOL error 
  { syntax_error (make_position $loc) }

level1_instruction:
| BEGIN i=instruction END 
            { i }
| PRE c=condition THEN i=instruction END { i } (* Preconditions are not visible in code *)
| i=level1_instruction_desc {mkloc $loc @@ i}

level1_instruction_desc:
| VAR xs=separated_nonempty_list(COMMA,IDENT) IN i=instruction END
  { let xs = List.map mk_annot xs in I_var{xs;i} }
| Skip
  { I_skip }
| i=becomes_equal_instruction
| i=callup_instruction
| i=if_instruction
| i=case_instruction {i}
| ASSERT c=condition THEN i=instruction END
  { I_assert{c;i} }

| WHILE c=condition DO i=instruction
    preceded(VARIANT,term)? (* cela devrait être une expression *)
  END 
  { I_while{c;i} }
| PRINT_INT a=term 
  { Debug_print_int{a} }
| PRINT_TYPE a=term 
  { Debug_print_type{a} }
| ILL_TYPED a=term
  { Debug_ill_typed{a} }

becomes_equal_instruction:
| xr=ident_ren COL_EQ a=term 
    {  I_assign{xr;a} }
| xr=ident_ren idxs=parenthesized(separated_nonempty_list(COMMA,term)) 
  COL_EQ a=term
    { I_array_assign{xr;idxs;a} }
| xr=ident_ren QUOTE xs=separated_nonempty_list(QUOTE,IDENT) COL_EQ a=term
    { I_record_assign{xr;xs;a} }
/* | x=ident_ren COL_EQ a=expr_array { I_array_init(x,a) }*/

callup_instruction:
| ret_opt=callup_return
  name=ident_ren
  args=plist(term)
  { let outs = none_is_empty_list ret_opt in 
    let outs = List.map mk_annot outs in 
    I_call{outs;op=name;args} }

%inline callup_return:
| l=separated_nonempty_list(COMMA,ident_ren) LT_MINUS_MINUS {Some l}
| {None}

if_instruction: 
| IF c0=condition 
    THEN i0=instruction 
    cases=list(preceded(ELSIF,separated_pair(condition,THEN,instruction))) 
    others=option(preceded(ELSE,instruction)) 
  END
  {I_if{c0;i0;cases;others} } 

case_instruction:
| CASE a=simple_term OF
    EITHER ts1=separated_nonempty_list(COMMA,const_term) THEN i=instruction
    cases=list(preceded(OR,separated_pair(
                            separated_nonempty_list(COMMA,const_term),
                            THEN,instruction)))
    others=option(preceded(ELSE,instruction)) END END 
  { let cases = (ts1,i)::cases in
    I_case{a;cases;others} }


expr_array_desc:
| LCURLY maplets=separated_nonempty_list(COMMA,array_ext_body) RCURLY 
  { A_array{arr=B_array_ext{maplets}} }
|  a=ranges  
  {let (a',t) = a in A_array{arr=B_array_init(a',t)}}


array_ext_body:
| s=simple_term PIPE_MINUS_GT t=term {([s],t)}
| x=simple_term PIPE_MINUS_GT v=array_ext_body {let (xs,t) = v in (x::xs,t)}


ranges:
| xs=term STAR t=delimited(LCURLY,term,RCURLY) 
{ let rec loop acc = function 
  | {desc=A_app_binop{op=Mul;a1;a2}} -> loop (a2 :: acc) a1 
  | a -> List.rev (a::acc) in (loop [] xs,t) }

ident_ren: 
| l=separated_nonempty_list(DOT,IDENT)
  { match List.rev l with
   | [] -> assert false
   | x::xs -> let r = List.rev xs in Id_ren {x;r} }

externals:
| externals_aux+ {}

externals_aux:
| EXTERNAL name=IDENT 
     parameters=plist(pair(IDENT,preceded(COL,typ_val)))
     envTy=separated_nonempty_list(AMPERSAND,external_clause) 
  END 
  { let mch = 
      let xr = Ast.x2xr name 
      and var = Cst 
      and ty = Types.T_machine{parameters=List.map(fun (_,ty) -> ty) parameters} in
      (xr,var,ty)
    in
    let envTy = mch :: List.map (fun (x,var,ty) -> (Id_ren {x;r=[name]},var,ty)) envTy in
    initEnvTy := envTy @ !initEnvTy ;
    initMchs := name :: !initMchs }

external_clause:
| VAR x=IDENT COL ty=typ_val { (x,Var,ty) }
| x=IDENT COL ty=typ_val { (x,Cst,ty) }

typ_val: 
| ty=operation_t
| ty=ty_exps { ty }

ty_exps:
| tyArgs=separated_list(STAR,typ_exp) MINUS_MINUS_GT ty=typ_exp { T_arrow{tyArgs;ty}}
| tys=separated_list(STAR,typ_exp) 
  { match tys with 
    | [ty] -> ty
    | tys -> Types.T_tuple{tys} }

typ_exp:
| LPAREN ty=typ_exp RPAREN {ty}
| INT { Types.T_int }
| T_BOOL { Types.T_bool }
| T_STRING { Types.T_string }
| name=IDENT { Types.T_ident{name} }
| POW ty=parenthesized(typ_exp) { Types.T_pow{ty} }
| Struct LPAREN fields=separated_nonempty_list(COMMA,pair(terminated(IDENT,COL),typ_exp)) RPAREN 
  {Types.mk_struct fields}

operation_t:    
| T_OPERATION LPAREN tyOut=argTy COMMA tyArgs=argTy RPAREN { Types.T_operation{tyOut;tyArgs}}

argTy:
| LPAREN RPAREN {[]}
| ty=typ_exp {[ty]}
| LPAREN ty=typ_exp COMMA tys=separated_nonempty_list(COMMA,typ_exp) RPAREN { ty::tys }
