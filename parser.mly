%{
  open Ast
  open Err

  let none_is_empty_list = function 
      None -> [] 
    | Some l -> l
%}

/*  symboles réservés */
%token PRINT_INT PRINT_TYPE ILL_TYPED
%token AMPERSAND QUOTE LPAREN RPAREN STAR 
%token STAR_STAR PLUS COMMA MINUS
%token DOT DOT_DOT SLASH SLASH_COL 
%token SLASH_EQ COL 
%token COL_EQ SEMICOL LT LT_MINUS_MINUS
%token LT_EQ EQ GT 
%token GT_EQ LBRACKET
%token LBRACKET_RBREACK RBRACKET
%token LCURLY LCURLY_RCURLY PIPE PIPE_MINUS_GT PIPE_PIPE 
%token RCURLY
 
%token ASSERT BEGIN 
%token BOOL CASE CONCRETE_CONSTANTS CONCRETE_VARIABLES CONSTANTS 
%token DO EITHER ELSE ELSIF END EXTENDS FALSE IF INVARIANT
%token IMPLEMENTATION IMPORTS IN INCLUDES INITIALISATION INT INTEGER
%token LOCAL_OPERATIONS MACHINE MAXINT MININT NAT NAT1 NATURAL NATURAL1
%token OF OPERATIONS OR POW POW1 PROMOTES PROPERTIES REFINES REFINEMENT
%token SEES SELECT SETS STRING THEN TRUE USES VALUES VAR VARIANT
%token VARIABLES WHEN WHERE WHILE Bool 
%token Mod Not Or Pred
%token Rec Skip  Struct
%token Succ

/*  symboles réservés */
%token EOF

%token <Ast.ident> IDENT        /* identificateurs */
%token <string> NUM             /* constantes numériques */
%token <string> STRING_LITERAL  /* Chaînes de caractères */   

/* %start <Ast.composant> composant_eof */
%start <Ast.component> component_eof /* composant_eof */

 
/* prio pas precisé, %left COL_EQ LT_MINUS_MINUS */

/* 10 */
%left PIPE

/* 20 */
%left SEMICOL PIPE_PIPE

/* 30 */

/* 40 */
%left AMPERSAND Or

/* 60 */
%left EQ
%left below_COL /* champ_record */

/* 110 */

/* 115 */
%left COMMA

/* 120 */
%left COL

/* 125 */

/* 160 */
%left SLASH_COL SLASH_EQ LT 
%left LT_EQ GT GT_EQ
%left PIPE_MINUS_GT

/* 170 */
%left DOT_DOT


/* 180 */
%left PLUS MINUS

/* 190 */
%left STAR SLASH Mod

/* 200 */
%right STAR_STAR

/* 210 */
%nonassoc below_MINUS

/* 220 */
%right DOT

/* 230 */

/* 250 */
%left QUOTE

%%

%inline plist(X):
| xs = loption(delimited(LPAREN, separated_nonempty_list(COMMA, X), RPAREN)) { xs }


let parenthesized (x) ==
  y=delimited(LPAREN,x,RPAREN); { y }

/* Axiome */

component_eof: 
    | m=component EOF { m }
    | error EOF { syntax_error (make_position $loc)}

component: c=abstract_machine | c=refinement | c=implementation {c}

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

let multi_instantiations(instantiation) ==
    | xs=separated_nonempty_list(COMMA,pair(
          ident_ren,
          plist(instantiation_BO))); 
    {xs}

clause_imports:
    | IMPORTS mchs_init=multi_instantiations(instantiation_BO)
    { Some (mkloc $loc @@ Inclusion {mchs_init}) }

instantiation_BO:
    | i=term {i}
    /*| i=integer_set_BO
    | i=BOOL
    | i=interval
    {}*/

clause_sees:
    | SEES mchs=separated_nonempty_list(COMMA,ident_ren)
    { Some (mkloc $loc @@ Sees {mchs}) }

clause_includes:
    | INCLUDES mchs_init=multi_instantiations(instantiation)
    { Some (mkloc $loc @@ Inclusion {mchs_init}) }

instantiation:
    | i=term
    | i=integer_set
    | i=BOOL
    | i=interval
    {}

clause_promotes:
    | PROMOTES mchs=separated_nonempty_list(COMMA,ident_ren)
    { Some (mkloc $loc @@ Promotes {mchs}) }

clause_extends:
    | EXTENDS mchs_init=multi_instantiations(instantiation)
    { Some (mkloc $loc @@ Inclusion {mchs_init}) }

clause_extends_BO: 
    | EXTENDS mchs_init=multi_instantiations(instantiation_BO) 
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
    | x=IDENT EQ t=term { (x,TermValue t) }   
    /* nb: les tableaux sont ajouté à la règle `term` */
    | x=IDENT EQ i=interval_BO {(x,IntervalValue i)}
   
    | IDENT EQ error { syntax_error ~msg:"" (make_position $loc)}
    | ident_ren EQ error  { syntax_error ~msg:"" (make_position $loc)}

clause_concrete_variables:
    | CONCRETE_VARIABLES xs=separated_nonempty_list(COMMA,ident_ren)
    { let xs = List.map mk_annot xs in
       Some (mkloc $loc @@ Concrete_variables{xs}) }

clause_initialisation_BO:
    | INITIALISATION i=instruction
    { Some (mkloc $loc @@ InitialisationB0{i}) }

header_operation:
  opt1=header_operation_ret
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
    | a=simple_term                  {a}
    | a=parenthesized(term)          {a} 
    | a=expr_array                   {a} /* extension par rapport à la grammaire */ 
    | MINUS a=term %prec below_MINUS { mkloc $loc @@AppUnOp{op=Uminus;a} }
    | a1=term PLUS  a2=term          { mkloc $loc @@AppBinOp{op=Add;a1;a2} }
    | a1=term MINUS a2=term          { mkloc $loc @@AppBinOp{op=Sub;a1;a2} }
    | a1=term STAR  a2=term          { mkloc $loc @@AppBinOp{op=Mul;a1;a2} }
    | a1=term SLASH a2=term          { mkloc $loc @@AppBinOp{op=Div;a1;a2} }
    | a1=term Mod   a2=term          { mkloc $loc @@AppBinOp{op=Mod;a1;a2} }
    | a1=term STAR_STAR a2=term      { mkloc $loc @@AppBinOp{op=Pow;a1;a2} }
    
    | Succ a=parenthesized(term)     { mkloc $loc @@ AppUnOp{op=Succ;a} }
    | Pred a=parenthesized(term)     { mkloc $loc @@ AppUnOp{op=Pred;a} }
    | xr=ident_ren idxs=parenthesized(separated_nonempty_list(COMMA,term)) 
                                     { mkloc $loc @@ Array_access{xr;idxs} }
    | Rec assocs=parenthesized(separated_nonempty_list(COMMA,
               pair(option(terminated(IDENT,COL)),term)))
                                     { mkloc $loc @@ Record_create{assocs} }
    | a=term QUOTE x=IDENT           { mkloc $loc @@ Record_access {a;x} }

simple_term:
    | xr=ident_ren                    { mkloc $loc @@ Ident{xr} }
    | k=const_term                    { mkloc $loc @@ Const{k} }
    | Bool c=parenthesized(condition) { mkloc $loc @@ TermOfCondition{c} }
const_term:   
    | s=STRING_LITERAL                { String s }
    | s=NUM                           { Int (Num s) }
    | MAXINT                          { Int Max_int }
    | MININT                          { Int Min_int }
    | FALSE                           { Bool false }
    | TRUE                            { Bool true }

/* Conditions */

condition:
    /* je remplace les simple_term par des term */
    | a1=term EQ a2=term       { mkloc $loc @@Compare{op=Eq;a1;a2} }
    | a1=term SLASH_EQ a2=term { mkloc $loc @@Compare{op=Neq;a1;a2} }
    | a1=term LT a2=term       { mkloc $loc @@Compare{op=Lt;a1;a2} } 
    | a1=term LT_EQ a2=term    { mkloc $loc @@Compare{op=Le;a1;a2} }
    | a1=term GT a2=term       { mkloc $loc @@Compare{op=Gt;a1;a2} }
    | a1=term GT_EQ a2=term    { mkloc $loc @@Compare{op=Ge;a1;a2} }
    | c1=condition AMPERSAND c2=condition    { mkloc $loc @@And{c1;c2}}
    | c1=condition Or c2=condition           { mkloc $loc @@Or{c1;c2}}
    | Not c=parenthesized(condition)         { mkloc $loc @@Not{c} }
    | c=parenthesized(condition)             { c }

/* Instructions */ 
instruction: 
    | i=level1_instruction {i}
    
    | i1=instruction SEMICOL i2=instruction {mkloc $loc @@ Seq{i1;i2}}
    | instruction SEMICOL error 
    { syntax_error (make_position $loc) }

level1_instruction: 
    | BEGIN i=instruction END                    { mkloc $loc @@ Block{i} }
    | VAR xs=separated_nonempty_list(COMMA,IDENT) IN i=instruction END
           { let xs = List.map mk_annot xs in
             mkloc $loc @@ Var{xs;i} }
    | Skip                                        { mkloc $loc @@ Skip }
    | i=becomes_equal_instruction
    | i=callup_instruction
    | i=if_instruction
    | i=case_instruction {i}
    | ASSERT c=condition THEN i=instruction END    {mkloc $loc @@ Assert{c;i}}

    | WHILE c=condition DO i=instruction
        (* preceded(INVARIANT,predicat)? *)
        preceded(VARIANT,term)? (* cela devrait être une expression *)
      END 
                                     {mkloc $loc @@  While{c;i} }
    | PRINT_INT a=term               {mkloc $loc @@ Print_int{a}}
    | PRINT_TYPE a=term              {mkloc $loc @@ Print_type{a}}
    | ILL_TYPED a=term               {mkloc $loc @@ Ill_typed{a}}


    

becomes_equal_instruction:
    | xr=ident_ren COL_EQ a=term 
        { mkloc $loc @@ Assign{xr;a} }
    | xr=ident_ren idxs=parenthesized(separated_nonempty_list(COMMA,term)) 
      COL_EQ a=term
        { mkloc $loc @@ Array_assign{xr;idxs;a} }
    | xr=ident_ren QUOTE xs=separated_nonempty_list(QUOTE,IDENT) COL_EQ a=term
        { mkloc $loc @@ Record_assign{xr;xs;a} }
   /* | x=ident_ren COL_EQ a=expr_array { Array_init(x,a) }*/
    
callup_instruction:
  ret_opt=callup_return
  name=ident_ren
  args=plist(term)
  { let outs = none_is_empty_list ret_opt in 
    let outs = List.map mk_annot outs in 
    mkloc $loc @@ Call{outs;op=name;args} }

%inline callup_return:
    | l=separated_nonempty_list(COMMA,ident_ren) LT_MINUS_MINUS {Some l}
    | {None}

if_instruction: 
    | IF c0=condition 
        THEN i0=instruction 
        cases=list(preceded(ELSIF,separated_pair(condition,THEN,instruction))) 
        others=option(preceded(ELSE,instruction)) 
      END
    { mkloc $loc @@ If{c0;i0;cases;others} } 

case_instruction:
    | CASE a=simple_term OF
        EITHER ts1=separated_nonempty_list(COMMA,const_term) THEN i=instruction
        cases=list(preceded(OR,separated_pair(
                                separated_nonempty_list(COMMA,const_term),
                                THEN,instruction)))
        others=option(preceded(ELSE,instruction)) END END 
    { let cases = (ts1,i)::cases in
      mkloc $loc @@ Case{a;cases;others} }


expr_array:
     | LCURLY maplets=separated_nonempty_list(COMMA,array_ext_body) RCURLY 

     { mkloc $loc @@ B_array{arr=B_array_ext{maplets}} }
     |  x=ranges  
       {let (l,t) = x in 
        mkloc $loc @@ B_array{arr=B_array_init(l,t)}}


array_ext_body:
  | s=simple_term PIPE_MINUS_GT t=term {([s],t)}
  | x=simple_term PIPE_MINUS_GT v=array_ext_body {let (xs,t) = v in (x::xs,t)}


ranges:
  | x=range STAR t=delimited(LCURLY,term,RCURLY) { ([x],t) }
  | x=range STAR xs=ranges  { let xs',t= xs in (x::xs',t)}
  | x=range STAR error { syntax_error ~msg:"" (make_position $loc)}

range:
    | x=parenthesized(ident_ren) { match x with Id_ren{x} -> Range_as_ident x }
    | x=ident_ren error {failwith "il faut parenthéser l'identificateur alias d'intervalle"}
    | r=parenthesized(interval_BO) {Range_as_interval r}
    /*| LCURLY
        r=separated_nonempty_list(COMMA,simple_term)
      RCURLY {Range_as_set(r)}*/

interval: x=interval_BO {x}

integer_set:  /* todo ... */
    | LCURLY_RCURLY 
    | INTEGER
    | NATURAL
    | NATURAL1
    | NAT | NAT1 | INT
    | integer_set_BO
    {}

interval_BO:
    | e1=term DOT_DOT e2=term
    { Interval (e1,e2) }
    | name=integer_set_BO
    {AliasInterval{name}}

integer_set_BO:
    | NAT {SetNat}
    | NAT1{SetNat1}
    | INT {SetInt}

ident_ren: l=separated_nonempty_list(DOT,IDENT)
  { match List.rev l with
   | [] -> assert false
   | x::xs -> let r = List.rev xs in Id_ren {x;r} }

   