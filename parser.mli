
(* The type of tokens. *)

type token = 
  | WHILE
  | VARIANT
  | VAR
  | VALUES
  | USES
  | T_STRING
  | T_OPERATION
  | T_BOOL
  | TRUE
  | THEN
  | Succ
  | Struct
  | Skip
  | STRING_LITERAL of (string)
  | STAR_STAR
  | STAR
  | SLASH_EQ
  | SLASH
  | SETS
  | SEMICOL
  | SEES
  | Rec
  | RPAREN
  | REFINES
  | REFINEMENT
  | RCURLY
  | QUOTE
  | Pred
  | PROMOTES
  | PRINT_TYPE
  | PRINT_INT
  | PRE
  | POW
  | PLUS
  | PIPE_MINUS_GT
  | Or
  | OR
  | OPERATIONS
  | OF
  | Not
  | NAT1
  | NAT
  | Mod
  | MINUS_MINUS_GT
  | MINUS
  | MININT
  | MAXINT
  | MACHINE
  | LT_MINUS_MINUS
  | LT_EQ
  | LT
  | LPAREN
  | LOCAL_OPERATIONS
  | LCURLY
  | INT_LITERAL of (string)
  | INT
  | INITIALISATION
  | INCLUDES
  | IN
  | IMPORTS
  | IMPLEMENTATION
  | ILL_TYPED
  | IF
  | IDENT of (Ast.ident)
  | GT_EQ
  | GT
  | FALSE
  | EXTERNAL
  | EXTENDS
  | EQ
  | EOF
  | END
  | ELSIF
  | ELSE
  | EITHER
  | DOT_DOT
  | DOT
  | DO
  | CONSTANTS
  | CONCRETE_VARIABLES
  | CONCRETE_CONSTANTS
  | COMMA
  | COL_EQ
  | COL
  | CASE
  | Bool
  | BEGIN
  | ASSERT
  | AMPERSAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val component_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.component option)
