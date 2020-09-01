{ 
open Err
open Parser

let keyword_table = Hashtbl.create 123
let () =
  List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
    [
        ( "ASSERT", ASSERT);
        ( "BEGIN", BEGIN);
        ( "BOOL", BOOL);
        ( "CASE", CASE);
        ( "CONCRETE_CONSTANTS", CONCRETE_CONSTANTS);
        ( "CONCRETE_VARIABLES", CONCRETE_VARIABLES);
        ( "CONSTANTS", CONSTANTS);
        ( "DO", DO);
        ( "EITHER", EITHER);
        ( "ELSE", ELSE);
        ( "ELSIF", ELSIF);
        ( "END", END);
        ( "EXTENDS", EXTENDS);
        ( "FALSE", FALSE);
        ( "IF", IF);
        ( "INVARIANT", INVARIANT);
        ( "IMPLEMENTATION", IMPLEMENTATION);
        ( "IMPORTS", IMPORTS);
        ( "IN", IN);
        ( "INCLUDES", INCLUDES);
        ( "INITIALISATION", INITIALISATION);
        ( "INT", INT);
        ( "INTEGER", INTEGER);
        ( "LOCAL_OPERATIONS", LOCAL_OPERATIONS);
        ( "MACHINE", MACHINE);
        ( "MAXINT", MAXINT);
        ( "MININT", MININT);
        ( "NAT", NAT);
        ( "NAT1", NAT1);
        ( "NATURAL", NATURAL);
        ( "NATURAL1", NATURAL1);
        ( "OF", OF);
        ( "OPERATIONS", OPERATIONS);
        ( "OR", OR);
        ( "POW", POW);
        ( "POW1", POW1);
        ( "PROMOTES", PROMOTES);
        ( "PROPERTIES", PROPERTIES);
        ( "REFINES", REFINES);
        ( "REFINEMENT", REFINEMENT);
        ( "SEES", SEES);
        ( "SELECT", SELECT);
        ( "SETS", SETS);
        ( "STRING", STRING);
        ( "THEN", THEN);
        ( "TRUE", TRUE);
        ( "USES", USES);
        ( "VALUES", VALUES);
        ( "VAR", VAR);
        ( "VARIANT", VARIANT);
        ( "VARIABLES", VARIABLES);
        ( "WHEN", WHEN);
        ( "WHERE", WHERE);
        ( "WHILE", WHILE);
        ( "bool", Bool);
        ( "mod", Mod);
        ( "not", Not);
        ( "or", Or);
        ( "pred",Pred);
        ( "rec", Rec);
        ( "skip", Skip);
        ( "struct", Struct);
        ( "succ", Succ);
    ]
}

let identifier = ['a'-'z''A'-'Z'] ['a'-'z''A'-'Z''0'-'9''_']*


rule token = parse
| "#print_int" { PRINT_INT }
| "#print_type" { PRINT_TYPE }
| "#ill_typed" { ILL_TYPED }
(*  symboles réservés *)

| (['"'](([^'"'])* as s)['"']) { STRING_LITERAL(s) }
| '&'    { AMPERSAND }
| '\''   { QUOTE }
| '('    { LPAREN }
| ')'    { RPAREN }
| '*'    { STAR }
| "**"   { STAR_STAR }
| '+'    { PLUS }
| ','    { COMMA }     
| '-'    { MINUS }
| '.'    { DOT }
| ".."   { DOT_DOT }
| '/'    { SLASH }
| "/="   { SLASH_EQ }
| ':'    { COL }
| ":="   { COL_EQ }
| ';'    { SEMICOL }
| "<"    { LT }
| "<--"  { LT_MINUS_MINUS }
| "<="   { LT_EQ }
| "="    { EQ }
(* | "=="   { EQ_EQ } *)
| ">"    { GT }
| ">="   { GT_EQ }
| "["    { LBRACKET }
| "[]"   { LBRACKET_RBREACK }
| "]"    { RBRACKET }
| "{"    { LCURLY }
| "{}"   { LCURLY_RCURLY }
| "|"    { PIPE }
| "|->"  { PIPE_MINUS_GT }
| "||"   { PIPE_PIPE }
| "}"    { RCURLY }

(* Constantes numériques *)

| ['-']?['0'-'9']+ as lxm  { NUM(lxm) }

(* Mots-clefs et identificateurs *)

| ['a'-'z''A'-'Z'] ['a'-'z''A'-'Z''0'-'9''_']* as lxm   
  { match Hashtbl.find_opt keyword_table lxm with
    | Some kw -> kw
    | None -> IDENT(lxm) }

(*  caractères séparateurs *)

| ['\n' ] | ['\r''\n' ]    { (Lexing.new_line lexbuf) ; (token lexbuf) }
| [' ' '\t']           { token lexbuf }

(* commentaires *)

| "/*"                 { comment lexbuf }

(* fin de fichier *)

| eof                  { EOF }

(* erreur *)

| _ as lxm             { error_exit (pos ()) (Printf.sprintf "Unexpected character: %c"  lxm) }

and comment = parse 
| "*/"     { token lexbuf }
| ['\n' ] | ['\r''\n' ]   { (Lexing.new_line lexbuf) ; (comment lexbuf) }
| _        { comment lexbuf }
