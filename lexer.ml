# 10 "lexer.mll"
  
open Err
open Parser

let keyword_table = Hashtbl.create 123
let () =
  List.iter (fun (kwd, tok) -> Hashtbl.add keyword_table kwd tok)
    [
        ( "ASSERT", ASSERT);
        ( "BEGIN", BEGIN);
        (* ( "BOOL", BOOL); *)
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
        ( "IMPLEMENTATION", IMPLEMENTATION);
        ( "IMPORTS", IMPORTS);
        ( "IN", IN);
        ( "INCLUDES", INCLUDES);
        ( "INITIALISATION", INITIALISATION);
        ( "INT", INT);
        ( "LOCAL_OPERATIONS", LOCAL_OPERATIONS);
        ( "MACHINE", MACHINE);
        ( "MAXINT", MAXINT);
        ( "MININT", MININT);
        ( "NAT", NAT);
        ( "NAT1", NAT1);
        ( "OF", OF);
        ( "OPERATIONS", OPERATIONS);
        ( "OR", OR);
        ( "POW", POW);
        ( "PROMOTES", PROMOTES);
        ( "REFINES", REFINES);
        ( "REFINEMENT", REFINEMENT);
        ( "SEES", SEES);
        ( "SETS", SETS);
        ( "PRE", PRE);
        ( "THEN", THEN);
        ( "TRUE", TRUE);
        ( "USES", USES);
        ( "VALUES", VALUES);
        ( "VAR", VAR);
        ( "VARIANT", VARIANT);
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
        ( "EXTERNAL", EXTERNAL);
        ( "BOOL",T_BOOL);
        ( "STRING", T_STRING);
        ( "OPERATION",T_OPERATION); 
    ]

# 70 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\217\255\218\255\221\255\222\255\078\000\153\000\163\000\
    \225\255\018\000\227\255\003\000\230\255\176\000\234\255\033\000\
    \180\000\046\000\194\000\244\255\245\255\051\000\248\255\249\255\
    \250\255\251\255\002\000\118\000\028\000\023\000\033\000\029\000\
    \024\000\000\000\119\000\020\000\032\000\053\000\255\255\058\000\
    \070\000\254\255\064\000\001\000\058\000\104\000\114\000\127\000\
    \129\000\253\255\252\255\003\000\246\255\169\000\242\255\240\255\
    \219\255\220\255\238\255\235\255\236\255\231\255\187\000\232\255\
    \228\255\171\000\226\255\236\000\035\001\128\001\253\255\254\255\
    \187\000\255\255\001\000\254\255\255\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\032\000\031\000\031\000\
    \255\255\038\000\255\255\026\000\255\255\022\000\255\255\018\000\
    \016\000\014\000\012\000\255\255\255\255\008\000\255\255\255\255\
    \255\255\255\255\038\000\038\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\031\000\255\255\255\255\255\255\
    \002\000\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\000\000\000\000\255\255\255\255\255\255\
    \000\000\255\255\000\000\255\255\000\000\255\255\000\000\255\255\
    \255\255\255\255\255\255\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\051\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\000\000\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\051\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \000\000\255\255\000\000\255\255\255\255\070\000\000\000\000\000\
    \255\255\000\000\075\000\000\000\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\003\000\004\000\076\000\000\000\004\000\076\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \003\000\000\000\026\000\027\000\050\000\050\000\025\000\024\000\
    \023\000\022\000\021\000\020\000\019\000\018\000\017\000\016\000\
    \007\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\015\000\014\000\013\000\012\000\011\000\065\000\
    \064\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\060\000\055\000\052\000\059\000\034\000\
    \044\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\010\000\009\000\008\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \042\000\030\000\031\000\032\000\033\000\039\000\037\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\038\000\040\000\041\000\043\000\005\000\045\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\062\000\056\000\028\000\
    \036\000\046\000\047\000\057\000\048\000\049\000\029\000\054\000\
    \063\000\066\000\073\000\035\000\000\000\061\000\000\000\053\000\
    \000\000\058\000\007\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\000\000\000\000\000\000\000\000\
    \002\000\255\255\255\255\255\255\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\067\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\071\000\000\000\000\000\071\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\072\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \255\255";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\074\000\255\255\000\000\074\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\000\000\000\000\026\000\051\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\009\000\
    \011\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\015\000\017\000\021\000\015\000\033\000\
    \043\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \028\000\029\000\030\000\031\000\032\000\035\000\036\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\037\000\039\000\040\000\042\000\005\000\044\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\007\000\007\000\007\000\007\000\007\000\
    \007\000\007\000\007\000\007\000\007\000\013\000\016\000\027\000\
    \034\000\045\000\046\000\016\000\047\000\048\000\027\000\053\000\
    \062\000\065\000\072\000\034\000\255\255\013\000\255\255\018\000\
    \255\255\016\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\255\255\255\255\255\255\255\255\
    \000\000\074\000\026\000\051\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\007\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\067\000\067\000\067\000\067\000\067\000\
    \067\000\067\000\067\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\068\000\068\000\068\000\068\000\068\000\068\000\
    \068\000\068\000\069\000\255\255\255\255\069\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\069\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \069\000";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 82 "lexer.mll"
               ( PRINT_INT )
# 290 "lexer.ml"

  | 1 ->
# 83 "lexer.mll"
                ( PRINT_TYPE )
# 295 "lexer.ml"

  | 2 ->
# 84 "lexer.mll"
               ( ILL_TYPED )
# 300 "lexer.ml"

  | 3 ->
let
# 87 "lexer.mll"
                      s
# 306 "lexer.ml"
= Lexing.sub_lexeme lexbuf (lexbuf.Lexing.lex_start_pos + 1) (lexbuf.Lexing.lex_curr_pos + -1) in
# 87 "lexer.mll"
                               ( STRING_LITERAL(s) )
# 310 "lexer.ml"

  | 4 ->
# 88 "lexer.mll"
         ( AMPERSAND )
# 315 "lexer.ml"

  | 5 ->
# 89 "lexer.mll"
         ( QUOTE )
# 320 "lexer.ml"

  | 6 ->
# 90 "lexer.mll"
         ( LPAREN )
# 325 "lexer.ml"

  | 7 ->
# 91 "lexer.mll"
         ( RPAREN )
# 330 "lexer.ml"

  | 8 ->
# 92 "lexer.mll"
         ( STAR )
# 335 "lexer.ml"

  | 9 ->
# 93 "lexer.mll"
         ( STAR_STAR )
# 340 "lexer.ml"

  | 10 ->
# 94 "lexer.mll"
         ( PLUS )
# 345 "lexer.ml"

  | 11 ->
# 95 "lexer.mll"
         ( COMMA )
# 350 "lexer.ml"

  | 12 ->
# 96 "lexer.mll"
         ( MINUS )
# 355 "lexer.ml"

  | 13 ->
# 97 "lexer.mll"
          ( MINUS_MINUS_GT )
# 360 "lexer.ml"

  | 14 ->
# 98 "lexer.mll"
         ( DOT )
# 365 "lexer.ml"

  | 15 ->
# 99 "lexer.mll"
         ( DOT_DOT )
# 370 "lexer.ml"

  | 16 ->
# 100 "lexer.mll"
         ( SLASH )
# 375 "lexer.ml"

  | 17 ->
# 101 "lexer.mll"
         ( SLASH_EQ )
# 380 "lexer.ml"

  | 18 ->
# 102 "lexer.mll"
         ( COL )
# 385 "lexer.ml"

  | 19 ->
# 103 "lexer.mll"
         ( COL_COL )
# 390 "lexer.ml"

  | 20 ->
# 104 "lexer.mll"
         ( COL_EQ )
# 395 "lexer.ml"

  | 21 ->
# 105 "lexer.mll"
         ( SEMICOL )
# 400 "lexer.ml"

  | 22 ->
# 106 "lexer.mll"
         ( LT )
# 405 "lexer.ml"

  | 23 ->
# 107 "lexer.mll"
         ( LT_MINUS_MINUS )
# 410 "lexer.ml"

  | 24 ->
# 108 "lexer.mll"
         ( LT_EQ )
# 415 "lexer.ml"

  | 25 ->
# 109 "lexer.mll"
         ( EQ )
# 420 "lexer.ml"

  | 26 ->
# 111 "lexer.mll"
         ( GT )
# 425 "lexer.ml"

  | 27 ->
# 112 "lexer.mll"
         ( GT_EQ )
# 430 "lexer.ml"

  | 28 ->
# 113 "lexer.mll"
         ( LCURLY )
# 435 "lexer.ml"

  | 29 ->
# 115 "lexer.mll"
         ( PIPE_MINUS_GT )
# 440 "lexer.ml"

  | 30 ->
# 116 "lexer.mll"
         ( RCURLY )
# 445 "lexer.ml"

  | 31 ->
let
# 121 "lexer.mll"
                          lxm
# 451 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 121 "lexer.mll"
                               ( INT_LITERAL(lxm) )
# 455 "lexer.ml"

  | 32 ->
let
# 125 "lexer.mll"
                lxm
# 461 "lexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 126 "lexer.mll"
  ( match Hashtbl.find_opt keyword_table lxm with
    | Some kw -> kw
    | None -> IDENT(lxm) )
# 467 "lexer.ml"

  | 33 ->
# 132 "lexer.mll"
                           ( (Lexing.new_line lexbuf) ; (token lexbuf) )
# 472 "lexer.ml"

  | 34 ->
# 133 "lexer.mll"
                       ( token lexbuf )
# 477 "lexer.ml"

  | 35 ->
# 136 "lexer.mll"
                       ( comment_line lexbuf )
# 482 "lexer.ml"

  | 36 ->
# 137 "lexer.mll"
                       ( comment lexbuf )
# 487 "lexer.ml"

  | 37 ->
# 141 "lexer.mll"
                       ( EOF )
# 492 "lexer.ml"

  | 38 ->
let
# 145 "lexer.mll"
       lxm
# 498 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 145 "lexer.mll"
                       ( error_exit (pos ()) (Printf.sprintf "Unexpected character: %c"  lxm) )
# 502 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

and comment lexbuf =
   __ocaml_lex_comment_rec lexbuf 69
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 148 "lexer.mll"
           ( token lexbuf )
# 514 "lexer.ml"

  | 1 ->
# 149 "lexer.mll"
                          ( (Lexing.new_line lexbuf) ; (comment lexbuf) )
# 519 "lexer.ml"

  | 2 ->
# 150 "lexer.mll"
           ( comment lexbuf )
# 524 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

and comment_line lexbuf =
   __ocaml_lex_comment_line_rec lexbuf 74
and __ocaml_lex_comment_line_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 153 "lexer.mll"
                          ( (Lexing.new_line lexbuf) ; (token lexbuf) )
# 536 "lexer.ml"

  | 1 ->
# 154 "lexer.mll"
                          ( comment_line lexbuf )
# 541 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comment_line_rec lexbuf __ocaml_lex_state

;;

