
(* The type of tokens. *)

type token = 
  | WHILE
  | WHERE
  | WHEN
  | VARIANT
  | VARIABLES
  | VAR
  | VALUES
  | USES
  | TRUE
  | THEN
  | Succ
  | Struct
  | Skip
  | STRING_LITERAL of (string)
  | STRING
  | STAR_STAR
  | STAR
  | SLASH_EQ
  | SLASH_COL
  | SLASH
  | SETS
  | SEMICOL
  | SELECT
  | SEES
  | Rec
  | RPAREN
  | REFINES
  | REFINEMENT
  | RCURLY
  | RBRACKET
  | QUOTE
  | Pred
  | PROPERTIES
  | PROMOTES
  | PRINT_TYPE
  | PRINT_INT
  | POW1
  | POW
  | PLUS
  | PIPE_PIPE
  | PIPE_MINUS_GT
  | PIPE
  | Or
  | OR
  | OPERATIONS
  | OF
  | Not
  | NUM of (string)
  | NATURAL1
  | NATURAL
  | NAT1
  | NAT
  | Mod
  | MINUS
  | MININT
  | MAXINT
  | MACHINE
  | LT_MINUS_MINUS
  | LT_EQ
  | LT
  | LPAREN
  | LOCAL_OPERATIONS
  | LCURLY_RCURLY
  | LCURLY
  | LBRACKET_RBREACK
  | LBRACKET
  | INVARIANT
  | INTEGER
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
  | BOOL
  | BEGIN
  | ASSERT
  | AMPERSAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val component_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.component)
