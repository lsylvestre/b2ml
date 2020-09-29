
module MenhirBasics = struct
  
  exception Error
  
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
    | STRING_LITERAL of (
# 40 "parser.mly"
       (string)
# 24 "parser.ml"
  )
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
    | NUM of (
# 39 "parser.mly"
       (string)
# 62 "parser.ml"
  )
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
    | IDENT of (
# 38 "parser.mly"
       (Ast.ident)
# 95 "parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState497
  | MenhirState485
  | MenhirState483
  | MenhirState480
  | MenhirState479
  | MenhirState477
  | MenhirState475
  | MenhirState470
  | MenhirState469
  | MenhirState468
  | MenhirState467
  | MenhirState464
  | MenhirState463
  | MenhirState462
  | MenhirState460
  | MenhirState459
  | MenhirState456
  | MenhirState451
  | MenhirState450
  | MenhirState449
  | MenhirState446
  | MenhirState445
  | MenhirState443
  | MenhirState441
  | MenhirState440
  | MenhirState436
  | MenhirState435
  | MenhirState434
  | MenhirState432
  | MenhirState429
  | MenhirState426
  | MenhirState425
  | MenhirState424
  | MenhirState422
  | MenhirState421
  | MenhirState420
  | MenhirState419
  | MenhirState418
  | MenhirState417
  | MenhirState416
  | MenhirState413
  | MenhirState412
  | MenhirState410
  | MenhirState407
  | MenhirState404
  | MenhirState403
  | MenhirState402
  | MenhirState400
  | MenhirState397
  | MenhirState395
  | MenhirState394
  | MenhirState392
  | MenhirState391
  | MenhirState387
  | MenhirState386
  | MenhirState385
  | MenhirState383
  | MenhirState380
  | MenhirState379
  | MenhirState377
  | MenhirState376
  | MenhirState374
  | MenhirState368
  | MenhirState367
  | MenhirState366
  | MenhirState364
  | MenhirState363
  | MenhirState362
  | MenhirState359
  | MenhirState358
  | MenhirState357
  | MenhirState354
  | MenhirState352
  | MenhirState351
  | MenhirState347
  | MenhirState346
  | MenhirState341
  | MenhirState340
  | MenhirState339
  | MenhirState337
  | MenhirState335
  | MenhirState334
  | MenhirState333
  | MenhirState331
  | MenhirState328
  | MenhirState327
  | MenhirState325
  | MenhirState324
  | MenhirState323
  | MenhirState322
  | MenhirState321
  | MenhirState320
  | MenhirState319
  | MenhirState317
  | MenhirState315
  | MenhirState314
  | MenhirState312
  | MenhirState311
  | MenhirState309
  | MenhirState308
  | MenhirState305
  | MenhirState303
  | MenhirState302
  | MenhirState298
  | MenhirState292
  | MenhirState288
  | MenhirState287
  | MenhirState286
  | MenhirState285
  | MenhirState284
  | MenhirState283
  | MenhirState282
  | MenhirState281
  | MenhirState280
  | MenhirState279
  | MenhirState278
  | MenhirState277
  | MenhirState276
  | MenhirState275
  | MenhirState274
  | MenhirState268
  | MenhirState267
  | MenhirState264
  | MenhirState263
  | MenhirState261
  | MenhirState255
  | MenhirState252
  | MenhirState247
  | MenhirState245
  | MenhirState244
  | MenhirState241
  | MenhirState236
  | MenhirState235
  | MenhirState231
  | MenhirState227
  | MenhirState226
  | MenhirState222
  | MenhirState220
  | MenhirState218
  | MenhirState215
  | MenhirState211
  | MenhirState199
  | MenhirState197
  | MenhirState194
  | MenhirState193
  | MenhirState184
  | MenhirState178
  | MenhirState176
  | MenhirState173
  | MenhirState171
  | MenhirState169
  | MenhirState167
  | MenhirState164
  | MenhirState160
  | MenhirState158
  | MenhirState156
  | MenhirState155
  | MenhirState153
  | MenhirState152
  | MenhirState151
  | MenhirState149
  | MenhirState141
  | MenhirState140
  | MenhirState133
  | MenhirState131
  | MenhirState130
  | MenhirState127
  | MenhirState126
  | MenhirState125
  | MenhirState124
  | MenhirState123
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState116
  | MenhirState115
  | MenhirState114
  | MenhirState111
  | MenhirState110
  | MenhirState108
  | MenhirState104
  | MenhirState103
  | MenhirState99
  | MenhirState98
  | MenhirState97
  | MenhirState96
  | MenhirState95
  | MenhirState94
  | MenhirState93
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState87
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState79
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState69
  | MenhirState68
  | MenhirState66
  | MenhirState62
  | MenhirState60
  | MenhirState57
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState45
  | MenhirState42
  | MenhirState39
  | MenhirState36
  | MenhirState34
  | MenhirState32
  | MenhirState31
  | MenhirState27
  | MenhirState25
  | MenhirState22
  | MenhirState18
  | MenhirState15
  | MenhirState13
  | MenhirState7
  | MenhirState5
  | MenhirState4

# 1 "parser.mly"
  
  open Ast
  open Err

  let none_is_empty_list = function 
      None -> [] 
    | Some l -> l

# 377 "parser.ml"

let rec _menhir_goto_separated_nonempty_list_QUOTE_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_QUOTE_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState354 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1621 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 388 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1619 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 394 "parser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 399 "parser.ml"
        )), _startpos_x_), _, (xs : 'tv_separated_nonempty_list_QUOTE_IDENT_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_QUOTE_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 405 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_QUOTE_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1620)) : 'freshtv1622)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1627 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL_EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1623 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Bool ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LCURLY ->
                _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MAXINT ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MININT ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Pred ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Rec ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING_LITERAL _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Succ ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState357 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState357) : 'freshtv1624)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1625 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1626)) : 'freshtv1628)
    | MenhirState460 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1633 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COL_EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1629 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Bool ->
                _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LCURLY ->
                _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LPAREN ->
                _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MAXINT ->
                _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MININT ->
                _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MINUS ->
                _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Pred ->
                _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Rec ->
                _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING_LITERAL _v ->
                _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Succ ->
                _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState462 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState462) : 'freshtv1630)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1631 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1632)) : 'freshtv1634)
    | _ ->
        _menhir_fail ()

and _menhir_error430 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error329 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error142 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run140 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState140 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140

and _menhir_error139 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce166 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_a_, _menhir_s, (a : 'tv_simple_term), _startpos_a_) = _menhir_stack in
    let _startpos = _startpos_a_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_term = 
# 301 "parser.mly"
                                     (a)
# 579 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_const_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_const_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1601 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1597 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState333 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState333 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState333) : 'freshtv1598)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1599 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1600)) : 'freshtv1602)
    | MenhirState377 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1607 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1603 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState379 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState379 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState379) : 'freshtv1604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1605 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1606)) : 'freshtv1608)
    | MenhirState383 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1611 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1609 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_const_term), _startpos_x_), _, (xs : 'tv_separated_nonempty_list_COMMA_const_term_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_const_term_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 687 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_const_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1610)) : 'freshtv1612)
    | MenhirState432 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1617 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1613 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState434 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState434 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState434) : 'freshtv1614)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1615 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1616)) : 'freshtv1618)
    | _ ->
        _menhir_fail ()

and _menhir_error382 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce164 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_k_, _menhir_s, (k : 'tv_const_term), _startpos_k_) = _menhir_stack in
    let _startpos = _startpos_k_ in
    let _endpos = _endpos_k_ in
    let _v : 'tv_simple_term = let _endpos = _endpos_k_ in
    let _startpos = _startpos_k_ in
    let _loc = (_startpos, _endpos) in
    
# 323 "parser.mly"
                                      ( mkloc _loc @@ Const{k} )
# 754 "parser.ml"
     in
    _menhir_goto_simple_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run353 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 761 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | QUOTE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1591 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 773 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run353 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState354 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState354) : 'freshtv1592)
    | COL_EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1593 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 789 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 794 "parser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_QUOTE_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 799 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_QUOTE_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1594)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1595 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 809 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1596)

and _menhir_run364 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState364 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState364

and _menhir_error294 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce163 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_xr_, _menhir_s, (xr : 'tv_ident_ren), _startpos_xr_) = _menhir_stack in
    let _startpos = _startpos_xr_ in
    let _endpos = _endpos_xr_ in
    let _v : 'tv_simple_term = let _endpos = _endpos_xr_ in
    let _startpos = _startpos_xr_ in
    let _loc = (_startpos, _endpos) in
    
# 322 "parser.mly"
                                      ( mkloc _loc @@ Ident{xr} )
# 843 "parser.ml"
     in
    _menhir_goto_simple_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run87 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState87 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87

and _menhir_reduce92 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_integer_set_BO -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_name_ _menhir_s (name : 'tv_integer_set_BO) ->
    let _endpos = _endpos_name_ in
    let _v : 'tv_interval_BO = 
# 463 "parser.mly"
    (AliasInterval{name})
# 892 "parser.ml"
     in
    _menhir_goto_interval_BO _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce168 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_expr_array -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_a_ _menhir_s (a : 'tv_expr_array) _startpos_a_ ->
    let _startpos = _startpos_a_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_term = 
# 303 "parser.mly"
                                     (a)
# 903 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce76 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _, (maplets : 'tv_separated_nonempty_list_COMMA_array_ext_body_)) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_expr_array = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 424 "parser.mly"
     ( mkloc _loc @@ B_array{arr=B_array_ext{maplets}} )
# 920 "parser.ml"
     in
    _menhir_goto_expr_array _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_simple_term : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_simple_term -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState362 | MenhirState359 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState164 | MenhirState39 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 | MenhirState83 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1567 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce166 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1568)
    | MenhirState247 | MenhirState149 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1569 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error139 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE_MINUS_GT ->
              _menhir_run140 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error139 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1570)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1571 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error142 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | PIPE_MINUS_GT ->
              _menhir_run140 _menhir_env (Obj.magic _menhir_stack)
          | COMMA | MINUS | Mod | PLUS | QUOTE | RCURLY | SLASH | STAR | STAR_STAR ->
              _menhir_reduce166 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error142 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1572)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1573 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce166 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1574)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1581 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error329 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | OF ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1579 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | EITHER ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv1575 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | FALSE ->
                      _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MAXINT ->
                      _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MININT ->
                      _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | NUM _v ->
                      _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | STRING_LITERAL _v ->
                      _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | TRUE ->
                      _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState331 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState331) : 'freshtv1576)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv1577 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1578)) : 'freshtv1580)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error329 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1582)
    | MenhirState429 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1589 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error430 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | OF ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1587 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | EITHER ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv1583 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | FALSE ->
                      _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MAXINT ->
                      _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MININT ->
                      _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | NUM _v ->
                      _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | STRING_LITERAL _v ->
                      _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | TRUE ->
                      _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState432 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState432) : 'freshtv1584)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : (('freshtv1585 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1586)) : 'freshtv1588)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error430 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1590)
    | _ ->
        _menhir_fail ()

and _menhir_goto_const_term : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_const_term -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState429 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState328 | MenhirState367 | MenhirState359 | MenhirState362 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState247 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState39 | MenhirState164 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState149 | MenhirState60 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState72 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState83 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1557 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce164 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1558)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1559 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce164 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1560)
    | MenhirState432 | MenhirState331 | MenhirState383 | MenhirState377 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1565 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error382 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1561 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState383 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState383) : 'freshtv1562)
          | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1563 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_const_term), _startpos_x_) = _menhir_stack in
              let _v : 'tv_separated_nonempty_list_COMMA_const_term_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1112 "parser.ml"
               in
              _menhir_goto_separated_nonempty_list_COMMA_const_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1564)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error382 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1566)
    | _ ->
        _menhir_fail ()

and _menhir_reduce97 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_callup_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_i_ _menhir_s (i : 'tv_callup_instruction) _startpos_i_ ->
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : 'tv_level1_instruction = 
# 365 "parser.mly"
                         (i)
# 1129 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce98 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_if_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_i_ _menhir_s (i : 'tv_if_instruction) _startpos_i_ ->
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : 'tv_level1_instruction = 
# 365 "parser.mly"
                         (i)
# 1140 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce99 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_case_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_i_ _menhir_s (i : 'tv_case_instruction) _startpos_i_ ->
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : 'tv_level1_instruction = 
# 365 "parser.mly"
                         (i)
# 1151 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce121 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_preceded_ELSE_instruction__ = 
# 114 "<standard.mly>"
    ( None )
# 1160 "parser.ml"
     in
    _menhir_goto_option_preceded_ELSE_instruction__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run386 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BEGIN ->
        _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CASE ->
        _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState386 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ILL_TYPED ->
        _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_INT ->
        _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_TYPE ->
        _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Skip ->
        _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState386 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState386

and _menhir_reduce80 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_DOT_IDENT_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_l_ _menhir_s (l : 'tv_separated_nonempty_list_DOT_IDENT_) _startpos_l_ ->
    let _startpos = _startpos_l_ in
    let _endpos = _endpos_l_ in
    let _v : 'tv_ident_ren = 
# 471 "parser.mly"
  ( match List.rev l with
   | [] -> assert false
   | x::xs -> let r = List.rev xs in Id_ren {x;r} )
# 1206 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1555) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_ident_ren) = _v in
    let (_startpos : Lexing.position) = _startpos in
    ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState199 | MenhirState176 | MenhirState34 | MenhirState32 | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1493 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1491 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState31 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv1492)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | USES | VALUES ->
              _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)) : 'freshtv1494)
    | MenhirState485 | MenhirState483 | MenhirState169 | MenhirState167 | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1497 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error38 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1495) = Obj.magic _menhir_stack in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState39 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv1496)
          | COMMA | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | USES | VALUES ->
              _menhir_reduce117 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error38 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1498)
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState359 | MenhirState362 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState235 | MenhirState226 | MenhirState39 | MenhirState164 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState72 | MenhirState110 | MenhirState103 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1499 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PIPE_MINUS_GT | PLUS | QUOTE | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | STAR_STAR | THEN | VARIANT ->
              _menhir_reduce163 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85)) : 'freshtv1500)
    | MenhirState244 | MenhirState57 | MenhirState69 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1505 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1503 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState108 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv1501 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos__3_ : Lexing.position) = _endpos in
              let (_ : _menhir_state) = _menhir_s in
              ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : 'tv_ident_ren), _startpos_x_) = _menhir_stack in
              let _3 = () in
              let _1 = () in
              let _startpos = _startpos__1_ in
              let _v : 'tv_range = let x =
                let y = 
# 200 "<standard.mly>"
    ( x )
# 1342 "parser.ml"
                 in
                
# 109 "parser.mly"
                                ( y )
# 1347 "parser.ml"
                
              in
              
# 441 "parser.mly"
                                 ( match x with Id_ren{x} -> Range_as_ident x )
# 1353 "parser.ml"
               in
              _menhir_goto_range _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv1502)) : 'freshtv1504)
          | DOT_DOT | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | PLUS | QUOTE | SLASH | SLASH_EQ | STAR | STAR_STAR ->
              _menhir_reduce163 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108)) : 'freshtv1506)
    | MenhirState261 | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1507 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)) : 'freshtv1508)
    | MenhirState429 | MenhirState328 | MenhirState247 | MenhirState149 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1509 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce163 _menhir_env (Obj.magic _menhir_stack) : 'freshtv1510)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1513 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1511 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState267 in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState268 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState268) : 'freshtv1512)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | QUOTE | SEES | SEMICOL | SETS | SLASH | STAR | STAR_STAR | VALUES ->
              _menhir_reduce163 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState267)) : 'freshtv1514)
    | MenhirState220 | MenhirState292 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1523 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error294 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | EQ ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1521 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv1519 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position)) = Obj.magic _menhir_stack in
                  ((let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv1517 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ('freshtv1515 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position)) = Obj.magic _menhir_stack in
                  let (_endpos__3_ : Lexing.position) = _endpos in
                  let (_startpos__3_ : Lexing.position) = _startpos in
                  ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : 'tv_ident_ren), _startpos__1_) = _menhir_stack in
                  let _3 = () in
                  let _2 = () in
                  let _endpos = _endpos__3_ in
                  let _v : 'tv_valuation = let _endpos = _endpos__3_ in
                  let _startpos = _startpos__1_ in
                  let _loc = (_startpos, _endpos) in
                  
# 256 "parser.mly"
                          ( syntax_error ~msg:"" (make_position _loc))
# 1471 "parser.ml"
                   in
                  _menhir_goto_valuation _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1516)) : 'freshtv1518)) : 'freshtv1520)) : 'freshtv1522)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error294 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1524)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1525 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState303
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState303 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | EQ ->
              _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState303
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState303)) : 'freshtv1526)
    | MenhirState475 | MenhirState456 | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1527 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState305 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | EQ ->
              _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState305
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState305)) : 'freshtv1528)
    | MenhirState339 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1531 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1529) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState340 in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState341 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState341) : 'freshtv1530)
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState340
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState340)) : 'freshtv1532)
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState327 | MenhirState394 | MenhirState333 | MenhirState386 | MenhirState379 | MenhirState334 | MenhirState337 | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1539 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState351
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COL_EQ ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1533 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState351 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState367 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState367) : 'freshtv1534)
          | COMMA ->
              _menhir_run364 _menhir_env (Obj.magic _menhir_stack) MenhirState351
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1535 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState351 in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState359 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState359) : 'freshtv1536)
          | QUOTE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1537 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState351 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run353 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState352 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState352) : 'freshtv1538)
          | LT_MINUS_MINUS ->
              _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState351
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState351)) : 'freshtv1540)
    | MenhirState364 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1541 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState366
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              _menhir_run364 _menhir_env (Obj.magic _menhir_stack) MenhirState366
          | LT_MINUS_MINUS ->
              _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState366)) : 'freshtv1542)
    | MenhirState449 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1545 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState450
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1543) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState450 in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState451 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState451) : 'freshtv1544)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState450
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState450)) : 'freshtv1546)
    | MenhirState477 | MenhirState480 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1553 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState459
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COL_EQ ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1547 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState459 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState469 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState469) : 'freshtv1548)
          | COMMA ->
              _menhir_run364 _menhir_env (Obj.magic _menhir_stack) MenhirState459
          | LPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1549 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState459 in
              let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState464 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState464) : 'freshtv1550)
          | QUOTE ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv1551 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState459 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run353 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState460 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState460) : 'freshtv1552)
          | LT_MINUS_MINUS ->
              _menhir_reduce141 _menhir_env (Obj.magic _menhir_stack)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState459
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState459)) : 'freshtv1554)
    | _ ->
        _menhir_fail ()) : 'freshtv1556)

and _menhir_reduce152 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 1868 "parser.ml"
) * Lexing.position) -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_DOT_IDENT_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_xs_ _ (xs : 'tv_separated_nonempty_list_DOT_IDENT_) _startpos_xs_ ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 1874 "parser.ml"
    )), _startpos_x_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_separated_nonempty_list_DOT_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1882 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_DOT_IDENT_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_integer_set_BO : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_integer_set_BO -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState244 | MenhirState57 | MenhirState69 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1487) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_integer_set_BO) = _v in
        (_menhir_reduce92 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv1488)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1489) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_integer_set_BO) = _v in
        (_menhir_reduce92 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv1490)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr_array : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_expr_array -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState359 | MenhirState362 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState39 | MenhirState164 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState72 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState83 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1483) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_array) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce168 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1484)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1485) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_array) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce168 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1486)
    | _ ->
        _menhir_fail ()

and _menhir_reduce101 : _menhir_env -> (((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__6_ ->
    let ((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_c_, _, (c : 'tv_condition), _startpos_c_), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_), _, (_5 : 'tv_option_preceded_VARIANT_term__)) = _menhir_stack in
    let _6 = () in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__6_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 372 "parser.mly"
                                     (mkloc _loc @@  While{c;i} )
# 1942 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce179 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__1_inlined1_), _, (x : 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__)) = _menhir_stack in
    let _3 = () in
    let _1_inlined1 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_term = let assocs =
      let _1 = _1_inlined1 in
      let y = 
# 200 "<standard.mly>"
    ( x )
# 1959 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 1964 "parser.ml"
      
    in
    let _endpos_assocs_ = _endpos__3_ in
    let _endpos = _endpos_assocs_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 318 "parser.mly"
                                     ( mkloc _loc @@ Record_create{assocs} )
# 1974 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_option_terminated_IDENT_COL__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_terminated_IDENT_COL__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1481 * _menhir_state * 'tv_option_terminated_IDENT_COL__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState50 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv1482)

and _menhir_goto_separated_nonempty_list_COMMA_array_ext_body_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_array_ext_body_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1469 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1465 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1466)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1467 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1468)) : 'freshtv1470)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1473 * _menhir_state * 'tv_array_ext_body)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1471 * _menhir_state * 'tv_array_ext_body)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_array_ext_body)), _, (xs : 'tv_separated_nonempty_list_COMMA_array_ext_body_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_array_ext_body_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2052 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_array_ext_body_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1472)) : 'freshtv1474)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1479 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1475 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce76 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1477 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_array_ext_body_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1478)) : 'freshtv1480)
    | _ ->
        _menhir_fail ()

and _menhir_reduce165 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__1_inlined1_), _endpos_x_, _, (x : 'tv_condition), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _1_inlined1 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_simple_term = let c =
      let _1 = _1_inlined1 in
      let y = 
# 200 "<standard.mly>"
    ( x )
# 2090 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 2095 "parser.ml"
      
    in
    let _endpos_c_ = _endpos__3_ in
    let _endpos = _endpos_c_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 324 "parser.mly"
                                      ( mkloc _loc @@ TermOfCondition{c} )
# 2105 "parser.ml"
     in
    _menhir_goto_simple_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run130 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_condition * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState130 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130

and _menhir_run133 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_condition * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133

and _menhir_reduce178 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let (((_menhir_stack, _endpos_xr_, _menhir_s, (xr : 'tv_ident_ren), _startpos_xr_), _, _startpos__1_), _, (x : 'tv_separated_nonempty_list_COMMA_term_)) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos_xr_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_term = let idxs =
      let y = 
# 200 "<standard.mly>"
    ( x )
# 2200 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 2205 "parser.ml"
      
    in
    let _endpos_idxs_ = _endpos__3_ in
    let _endpos = _endpos_idxs_ in
    let _startpos = _startpos_xr_ in
    let _loc = (_startpos, _endpos) in
    
# 315 "parser.mly"
                                     ( mkloc _loc @@ Array_access{xr;idxs} )
# 2215 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce75 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_const_term = 
# 331 "parser.mly"
                                      ( Bool true )
# 2227 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce70 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 40 "parser.mly"
       (string)
# 2234 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_s_ _menhir_s (s : (
# 40 "parser.mly"
       (string)
# 2239 "parser.ml"
  )) _startpos_s_ ->
    let _startpos = _startpos_s_ in
    let _endpos = _endpos_s_ in
    let _v : 'tv_const_term = 
# 326 "parser.mly"
                                      ( String s )
# 2246 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce71 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 2253 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_s_ _menhir_s (s : (
# 39 "parser.mly"
       (string)
# 2258 "parser.ml"
  )) _startpos_s_ ->
    let _startpos = _startpos_s_ in
    let _endpos = _endpos_s_ in
    let _v : 'tv_const_term = 
# 327 "parser.mly"
                                      ( Int (Num s) )
# 2265 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce73 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_const_term = 
# 329 "parser.mly"
                                      ( Int Min_int )
# 2277 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce72 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_const_term = 
# 328 "parser.mly"
                                      ( Int Max_int )
# 2289 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run58 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run59 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run70 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_reduce74 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_const_term = 
# 330 "parser.mly"
                                      ( Bool false )
# 2316 "parser.ml"
     in
    _menhir_goto_const_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce180 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state -> Lexing.position -> (
# 38 "parser.mly"
       (Ast.ident)
# 2323 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_x_ (x : (
# 38 "parser.mly"
       (Ast.ident)
# 2328 "parser.ml"
  )) _startpos_x_ ->
    let ((_menhir_stack, _endpos_a_, _menhir_s, (a : 'tv_term), _startpos_a_), _) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a_ in
    let _endpos = _endpos_x_ in
    let _v : 'tv_term = let _endpos = _endpos_x_ in
    let _startpos = _startpos_a_ in
    let _loc = (_startpos, _endpos) in
    
# 319 "parser.mly"
                                     ( mkloc _loc @@ Record_access {a;x} )
# 2340 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_callup_instruction : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_callup_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState327 | MenhirState394 | MenhirState333 | MenhirState386 | MenhirState379 | MenhirState334 | MenhirState337 | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1461) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_callup_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1462)
    | MenhirState477 | MenhirState480 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1463) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_callup_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce97 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1464)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1455 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1453 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _endpos_x_, _, (x : 'tv_condition), _startpos_x_), _endpos_y_, _, (y : 'tv_instruction), _startpos_y_), _, (xs : 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ = let x =
          let x = 
# 175 "<standard.mly>"
    ( (x, y) )
# 2382 "parser.ml"
           in
          
# 183 "<standard.mly>"
    ( x )
# 2387 "parser.ml"
          
        in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 2393 "parser.ml"
         in
        _menhir_goto_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1454)) : 'freshtv1456)
    | MenhirState391 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1457 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | END ->
            _menhir_reduce121 _menhir_env (Obj.magic _menhir_stack) MenhirState397
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState397) : 'freshtv1458)
    | MenhirState425 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1459 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState426
        | END ->
            _menhir_reduce121 _menhir_env (Obj.magic _menhir_stack) MenhirState426
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState426) : 'freshtv1460)
    | _ ->
        _menhir_fail ()

and _menhir_reduce81 : _menhir_env -> ((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__7_ ->
    let (((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_c0_, _, (c0 : 'tv_condition), _startpos_c0_), _endpos_i0_, _, (i0 : 'tv_instruction), _startpos_i0_), _, (cases : 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___)), _, (others : 'tv_option_preceded_ELSE_instruction__)) = _menhir_stack in
    let _7 = () in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__7_ in
    let _v : 'tv_if_instruction = let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 408 "parser.mly"
    ( mkloc _loc @@ If{c0;i0;cases;others} )
# 2441 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1451) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_if_instruction) = _v in
    let (_startpos : Lexing.position) = _startpos in
    ((match _menhir_s with
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState327 | MenhirState394 | MenhirState333 | MenhirState386 | MenhirState379 | MenhirState334 | MenhirState337 | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1447) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_if_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce98 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1448)
    | MenhirState477 | MenhirState480 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1449) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_if_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce98 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1450)
    | _ ->
        _menhir_fail ()) : 'freshtv1452)

and _menhir_reduce10 : _menhir_env -> ((((((((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__11_ ->
    let (((((((_menhir_stack, _menhir_s, _startpos__1_), _endpos_a_, _, (a : 'tv_simple_term), _startpos_a_), _, (ts1 : 'tv_separated_nonempty_list_COMMA_const_term_)), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_), _, (cases : 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___)), _, (others : 'tv_option_preceded_ELSE_instruction__)), _endpos__10_) = _menhir_stack in
    let _11 = () in
    let _10 = () in
    let _6 = () in
    let _4 = () in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__11_ in
    let _v : 'tv_case_instruction = let _endpos = _endpos__11_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 417 "parser.mly"
    ( let cases = (ts1,i)::cases in
      mkloc _loc @@ Case{a;cases;others} )
# 2487 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1445) = _menhir_stack in
    let (_endpos : Lexing.position) = _endpos in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_case_instruction) = _v in
    let (_startpos : Lexing.position) = _startpos in
    ((match _menhir_s with
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState327 | MenhirState394 | MenhirState333 | MenhirState386 | MenhirState379 | MenhirState334 | MenhirState337 | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1441) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_case_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1442)
    | MenhirState477 | MenhirState480 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1443) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_case_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce99 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1444)
    | _ ->
        _menhir_fail ()) : 'freshtv1446)

and _menhir_goto_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState380 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1435 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1433 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s), _, (x : 'tv_separated_nonempty_list_COMMA_const_term_)), _endpos_y_, _, (y : 'tv_instruction), _startpos_y_), _, (xs : 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___)) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ = let x =
          let x = 
# 175 "<standard.mly>"
    ( (x, y) )
# 2531 "parser.ml"
           in
          
# 183 "<standard.mly>"
    ( x )
# 2536 "parser.ml"
          
        in
        
# 213 "<standard.mly>"
    ( x :: xs )
# 2542 "parser.ml"
         in
        _menhir_goto_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1434)) : 'freshtv1436)
    | MenhirState376 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv1437 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | END ->
            _menhir_reduce121 _menhir_env (Obj.magic _menhir_stack) MenhirState385
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState385) : 'freshtv1438)
    | MenhirState435 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv1439 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            _menhir_run386 _menhir_env (Obj.magic _menhir_stack) MenhirState436
        | END ->
            _menhir_reduce121 _menhir_env (Obj.magic _menhir_stack) MenhirState436
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState436) : 'freshtv1440)
    | _ ->
        _menhir_fail ()

and _menhir_reduce95 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s _startpos__1_ ->
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__1_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 361 "parser.mly"
                                                  ( mkloc _loc @@ Skip )
# 2587 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1429 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Not ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState68 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv1430)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1431 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1432)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAT ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69
    | NAT1 ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState69 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_error411 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run312 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState312 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState312

and _menhir_run315 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState315 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState315

and _menhir_run318 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run319 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState319 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState319

and _menhir_run321 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState321 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState321

and _menhir_run323 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState323 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState323

and _menhir_run325 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState325 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState325

and _menhir_run328 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState328 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState328 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState328

and _menhir_run334 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BEGIN ->
        _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CASE ->
        _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState334 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ILL_TYPED ->
        _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_INT ->
        _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_TYPE ->
        _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Skip ->
        _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState334 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState334

and _menhir_run335 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState335 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState335

and _menhir_error316 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error301 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_error195 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_clause_concrete_constants : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause_concrete_constants -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState13 | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1419) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_concrete_constants) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1417) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_concrete_constants) : 'tv_clause_concrete_constants) = _v in
        ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 3047 "parser.ml"
         in
        _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1418)) : 'freshtv1420)
    | MenhirState211 | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1423) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_concrete_constants) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1421) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_concrete_constants) : 'tv_clause_concrete_constants) = _v in
        ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 3062 "parser.ml"
         in
        _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1422)) : 'freshtv1424)
    | MenhirState218 | MenhirState497 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1427) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_concrete_constants) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1425) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_concrete_constants) : 'tv_clause_concrete_constants) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 3077 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1426)) : 'freshtv1428)
    | _ ->
        _menhir_fail ()

and _menhir_error19 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3086 "parser.ml"
) * Lexing.position)) * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce116 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ = let x = 
# 200 "<standard.mly>"
    ( x )
# 3100 "parser.ml"
     in
    
# 144 "<standard.mly>"
    ( x )
# 3105 "parser.ml"
     in
    _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_error9 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce136 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3117 "parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 3123 "parser.ml"
    )), _startpos_x_), _endpos_xs_, _, (xs : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_xs_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3131 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_set : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_set -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1415 * Lexing.position * _menhir_state * 'tv_set) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_error21 _menhir_env (Obj.magic _menhir_stack)
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | SEMICOL ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv1413 * Lexing.position * _menhir_state * 'tv_set) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IDENT _v ->
              _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState22 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | _ ->
              assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv1414)
      | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | USES | VALUES ->
          _menhir_reduce157 _menhir_env (Obj.magic _menhir_stack)
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_error21 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1416)

and _menhir_goto_separated_nonempty_list_SEMICOL_set_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOL_set_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1393 * Lexing.position * _menhir_state * 'tv_set)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_set_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1391 * Lexing.position * _menhir_state * 'tv_set)) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOL_set_) : 'tv_separated_nonempty_list_SEMICOL_set_) = _v in
        ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_set)) = _menhir_stack in
        let _2 = () in
        let _endpos = _endpos_xs_ in
        let _v : 'tv_separated_nonempty_list_SEMICOL_set_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3184 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOL_set_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1392)) : 'freshtv1394)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1411 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_set_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1409 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_sets_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((sets : 'tv_separated_nonempty_list_SEMICOL_set_) : 'tv_separated_nonempty_list_SEMICOL_set_) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_sets = let _endpos = _endpos_sets_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 233 "parser.mly"
    ( Some (mkloc _loc @@ Sets {sets}) )
# 3206 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1407) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_sets) = _v in
        ((match _menhir_s with
        | MenhirState184 | MenhirState13 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1397) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sets) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1395) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sets) : 'tv_clause_sets) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 3225 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1396)) : 'freshtv1398)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1401) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sets) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1399) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sets) : 'tv_clause_sets) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 3240 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1400)) : 'freshtv1402)
        | MenhirState497 | MenhirState218 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1405) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sets) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1403) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sets) : 'tv_clause_sets) = _v in
            ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 3255 "parser.ml"
             in
            _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1404)) : 'freshtv1406)
        | _ ->
            _menhir_fail ()) : 'freshtv1408)) : 'freshtv1410)) : 'freshtv1412)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_DOT_IDENT_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_DOT_IDENT_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1383 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3271 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_DOT_IDENT_) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce152 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1384)
    | MenhirState485 | MenhirState483 | MenhirState480 | MenhirState477 | MenhirState469 | MenhirState467 | MenhirState464 | MenhirState462 | MenhirState451 | MenhirState449 | MenhirState308 | MenhirState443 | MenhirState422 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState362 | MenhirState359 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState268 | MenhirState261 | MenhirState263 | MenhirState241 | MenhirState252 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState199 | MenhirState176 | MenhirState169 | MenhirState167 | MenhirState164 | MenhirState39 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState79 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 | MenhirState83 | MenhirState72 | MenhirState36 | MenhirState34 | MenhirState32 | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1385) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_DOT_IDENT_) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1386)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1387 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3291 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_DOT_IDENT_) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce152 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1388)
    | MenhirState475 | MenhirState456 | MenhirState445 | MenhirState440 | MenhirState429 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState394 | MenhirState327 | MenhirState328 | MenhirState386 | MenhirState379 | MenhirState333 | MenhirState334 | MenhirState364 | MenhirState347 | MenhirState339 | MenhirState337 | MenhirState302 | MenhirState298 | MenhirState220 | MenhirState292 | MenhirState247 | MenhirState149 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1389) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_DOT_IDENT_) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce80 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv1390)
    | _ ->
        _menhir_fail ()

and _menhir_error448 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run61 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 3317 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
    | COL_EQ | COMMA | ELSE | ELSIF | END | EQ | LPAREN | LT_MINUS_MINUS | OF | OR | PIPE_MINUS_GT | QUOTE | SEMICOL | VARIANT ->
        _menhir_reduce151 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1381 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3335 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1382)

and _menhir_error338 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce142 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_ident_ren), _startpos_x_), _), _endpos_xs_, _, (xs : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_xs_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_separated_nonempty_list_COMMA_ident_ren_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3354 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_ident_ren_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ : _menhir_env -> 'ttv_tail -> Lexing.position -> 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv1379 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_error166 _menhir_env (Obj.magic _menhir_stack)
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | COMMA ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : ('freshtv1377 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IDENT _v ->
              _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState167 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | _ ->
              assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167) : 'freshtv1378)
      | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | USES | VALUES ->
          _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_error166 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv1380)

and _menhir_goto_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1337 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1335 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_includes = let mchs_init = 
# 187 "parser.mly"
    (xs)
# 3406 "parser.ml"
         in
        let _endpos_mchs_init_ = _endpos_xs_ in
        let _endpos = _endpos_mchs_init_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 206 "parser.mly"
    ( Some (mkloc _loc @@ Inclusion {mchs_init}) )
# 3415 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1333) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_includes) = _v in
        ((match _menhir_s with
        | MenhirState13 | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1327) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_includes) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1325) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_includes) : 'tv_clause_includes) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 3434 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1326)) : 'freshtv1328)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1331) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_includes) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1329) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_includes) : 'tv_clause_includes) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 3449 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1330)) : 'freshtv1332)
        | _ ->
            _menhir_fail ()) : 'freshtv1334)) : 'freshtv1336)) : 'freshtv1338)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1341 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1339 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__)) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_ident_ren), _startpos_x_), _endpos_xs_inlined1_, (xs_inlined1 : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__)) = _menhir_stack in
        let _2 = () in
        let _endpos = _endpos_xs_ in
        let _v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ = let x =
          let xs = xs_inlined1 in
          let y = 
# 105 "parser.mly"
                                                                             ( xs )
# 3473 "parser.ml"
           in
          
# 167 "<standard.mly>"
    ( (x, y) )
# 3478 "parser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 3484 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1340)) : 'freshtv1342)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1355 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1353 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_extends = let mchs_init = 
# 187 "parser.mly"
    (xs)
# 3503 "parser.ml"
         in
        let _endpos_mchs_init_ = _endpos_xs_ in
        let _endpos = _endpos_mchs_init_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 221 "parser.mly"
    ( Some (mkloc _loc @@ Inclusion {mchs_init}) )
# 3512 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1351) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_extends) = _v in
        ((match _menhir_s with
        | MenhirState13 | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1345) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_extends) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1343) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_extends) : 'tv_clause_extends) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 3531 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1344)) : 'freshtv1346)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1349) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_extends) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1347) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_extends) : 'tv_clause_extends) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 3546 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1348)) : 'freshtv1350)
        | _ ->
            _menhir_fail ()) : 'freshtv1352)) : 'freshtv1354)) : 'freshtv1356)
    | MenhirState483 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1365 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1363 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_imports = let mchs_init = 
# 187 "parser.mly"
    (xs)
# 3567 "parser.ml"
         in
        let _endpos_mchs_init_ = _endpos_xs_ in
        let _endpos = _endpos_mchs_init_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 191 "parser.mly"
    ( Some (mkloc _loc @@ Inclusion {mchs_init}) )
# 3576 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1361) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_imports) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1359) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_imports) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1357) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_imports) : 'tv_clause_imports) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 3593 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1358)) : 'freshtv1360)) : 'freshtv1362)) : 'freshtv1364)) : 'freshtv1366)
    | MenhirState485 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1375 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1373 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_extends_BO = let mchs_init = 
# 187 "parser.mly"
    (xs)
# 3612 "parser.ml"
         in
        let _endpos_mchs_init_ = _endpos_xs_ in
        let _endpos = _endpos_mchs_init_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 225 "parser.mly"
    ( Some (mkloc _loc @@ Inclusion {mchs_init}) )
# 3621 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1371) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_extends_BO) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1369) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_extends_BO) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1367) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_extends_BO) : 'tv_clause_extends_BO) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 3638 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1368)) : 'freshtv1370)) : 'freshtv1372)) : 'freshtv1374)) : 'freshtv1376)
    | _ ->
        _menhir_fail ()

and _menhir_reduce89 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s ->
    let _1 = () in
    let _endpos = _endpos__1_ in
    let _v : 'tv_integer_set_BO = 
# 467 "parser.mly"
          (SetNat1)
# 3651 "parser.ml"
     in
    _menhir_goto_integer_set_BO _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce88 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s ->
    let _1 = () in
    let _endpos = _endpos__1_ in
    let _v : 'tv_integer_set_BO = 
# 466 "parser.mly"
          (SetNat)
# 3662 "parser.ml"
     in
    _menhir_goto_integer_set_BO _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce90 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__1_ _menhir_s ->
    let _1 = () in
    let _endpos = _endpos__1_ in
    let _v : 'tv_integer_set_BO = 
# 468 "parser.mly"
          (SetInt)
# 3673 "parser.ml"
     in
    _menhir_goto_integer_set_BO _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_run62 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 3680 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState62 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62

and _menhir_reduce131 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_range * Lexing.position) -> Lexing.position -> _menhir_state -> 'tv_ranges -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_xs_ _ (xs : 'tv_ranges) _startpos_xs_ ->
    let (_menhir_stack, _menhir_s, (x : 'tv_range), _startpos_x_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_ranges = 
# 437 "parser.mly"
                            ( let xs',t= xs in (x::xs',t))
# 3702 "parser.ml"
     in
    _menhir_goto_ranges _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce77 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_ranges -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_x_ _menhir_s (x : 'tv_ranges) _startpos_x_ ->
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : 'tv_expr_array = let _endpos = _endpos_x_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 426 "parser.mly"
       (let (l,t) = x in 
        mkloc _loc @@ B_array{arr=B_array_init(l,t)})
# 3717 "parser.ml"
     in
    _menhir_goto_expr_array _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAT ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81
    | NAT1 ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState81 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_option_preceded_VARIANT_term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_preceded_VARIANT_term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState402 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1317 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1313 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce101 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1315 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1316)) : 'freshtv1318)
    | MenhirState407 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv1323 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1319 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce101 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv1321 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_option_preceded_VARIANT_term__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1322)) : 'freshtv1324)
    | _ ->
        _menhir_fail ()

and _menhir_run275 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState275 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState275

and _menhir_run277 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState277 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState277

and _menhir_run279 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState279 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState279

and _menhir_run281 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState281 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState281

and _menhir_run283 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState283 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState283

and _menhir_run285 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState285 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState285

and _menhir_run224 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce75 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run225 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1309 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState226 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState226) : 'freshtv1310)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1311 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1312)

and _menhir_run229 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 40 "parser.mly"
       (string)
# 4107 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run230 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1305 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState231 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Bool | FALSE | LCURLY | LPAREN | MAXINT | MININT | MINUS | NUM _ | Pred | Rec | STRING_LITERAL _ | Succ | TRUE ->
            _menhir_reduce125 _menhir_env (Obj.magic _menhir_stack) MenhirState231
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231) : 'freshtv1306)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1307 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1308)

and _menhir_run234 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1301 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState235 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState235) : 'freshtv1302)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1303 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1304)

and _menhir_run238 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 4200 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run241 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState241 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState241

and _menhir_run242 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce73 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run243 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run244 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAT ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244
    | NAT1 ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState244 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState244

and _menhir_run247 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState247 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState247 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState247

and _menhir_run250 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run251 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1297 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Not ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState252 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState252) : 'freshtv1298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1299 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1300)

and _menhir_run256 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1293 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 4401 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce180 _menhir_env (Obj.magic _menhir_stack) _endpos _v _startpos) : 'freshtv1294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1295 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1296)

and _menhir_reduce167 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : 'tv_term), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_term = let a =
      let y = 
# 200 "<standard.mly>"
    ( x )
# 4425 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 4430 "parser.ml"
      
    in
    
# 302 "parser.mly"
                                     (a)
# 4436 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_instantiation_BO_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_instantiation_BO_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1287 * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1283 * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1281 * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _startpos__1_), _, (x : 'tv_separated_nonempty_list_COMMA_instantiation_BO_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _endpos = _endpos__3_ in
            let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ = let x = 
# 200 "<standard.mly>"
    ( x )
# 4465 "parser.ml"
             in
            
# 144 "<standard.mly>"
    ( x )
# 4470 "parser.ml"
             in
            _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ _menhir_env _menhir_stack _endpos _v) : 'freshtv1282)) : 'freshtv1284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1285 * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1286)) : 'freshtv1288)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1291 * _menhir_state * 'tv_instantiation_BO)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1289 * _menhir_state * 'tv_instantiation_BO)) * _menhir_state * 'tv_separated_nonempty_list_COMMA_instantiation_BO_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_instantiation_BO)), _, (xs : 'tv_separated_nonempty_list_COMMA_instantiation_BO_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_instantiation_BO_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 4490 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_instantiation_BO_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1290)) : 'freshtv1292)
    | _ ->
        _menhir_fail ()

and _menhir_reduce176 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__1_inlined1_), _endpos_x_, _, (x : 'tv_term), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _1_inlined1 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_term = let a =
      let _1 = _1_inlined1 in
      let y = 
# 200 "<standard.mly>"
    ( x )
# 4509 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 4514 "parser.ml"
      
    in
    let _endpos_a_ = _endpos__3_ in
    let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 312 "parser.mly"
                                     ( mkloc _loc @@ AppUnOp{op=Succ;a} )
# 4524 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1269 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1265 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce179 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1267 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1268)) : 'freshtv1270)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1273 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1271 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, (x : 'tv_option_terminated_IDENT_COL__)), _endpos_y_, _, (y : 'tv_term), _startpos_y_), _), _, (xs : 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 4561 "parser.ml"
         in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 4566 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1272)) : 'freshtv1274)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1279 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1275 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce179 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1276)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1277 * _menhir_state * Lexing.position) * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1278)) : 'freshtv1280)
    | _ ->
        _menhir_fail ()

and _menhir_reduce125 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_terminated_IDENT_COL__ = 
# 114 "<standard.mly>"
    ( None )
# 4596 "parser.ml"
     in
    _menhir_goto_option_terminated_IDENT_COL__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 4603 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COL ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1261 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 4615 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1259 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 4622 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 4627 "parser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_option_terminated_IDENT_COL__ = let x = 
# 191 "<standard.mly>"
    ( x )
# 4633 "parser.ml"
         in
        
# 116 "<standard.mly>"
    ( Some x )
# 4638 "parser.ml"
         in
        _menhir_goto_option_terminated_IDENT_COL__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1260)) : 'freshtv1262)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1263 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 4648 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1264)

and _menhir_reduce177 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__1_inlined1_), _endpos_x_, _, (x : 'tv_term), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _1_inlined1 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_term = let a =
      let _1 = _1_inlined1 in
      let y = 
# 200 "<standard.mly>"
    ( x )
# 4666 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 4671 "parser.ml"
      
    in
    let _endpos_a_ = _endpos__3_ in
    let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 313 "parser.mly"
                                     ( mkloc _loc @@ AppUnOp{op=Pred;a} )
# 4681 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_array_ext_body : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_array_ext_body -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1249 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1247 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_simple_term), _startpos_x_), _, (v : 'tv_array_ext_body)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_array_ext_body = 
# 432 "parser.mly"
                                                 (let (xs,t) = v in (x::xs,t))
# 4699 "parser.ml"
         in
        _menhir_goto_array_ext_body _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1248)) : 'freshtv1250)
    | MenhirState247 | MenhirState149 | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1257 * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1251 * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | Bool ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FALSE ->
                _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MAXINT ->
                _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MININT ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | NUM _v ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING_LITERAL _v ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TRUE ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState149 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149) : 'freshtv1252)
        | RCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1253 * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_array_ext_body)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_array_ext_body_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 4741 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_array_ext_body_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1255 * _menhir_state * 'tv_array_ext_body) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1256)) : 'freshtv1258)
    | _ ->
        _menhir_fail ()

and _menhir_goto_condition : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_condition -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1175 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1171 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1169 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : 'tv_condition), _startpos_x_) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : 'tv_condition = let c =
              let y = 
# 200 "<standard.mly>"
    ( x )
# 4785 "parser.ml"
               in
              
# 109 "parser.mly"
                                ( y )
# 4790 "parser.ml"
              
            in
            
# 346 "parser.mly"
                                             ( c )
# 4796 "parser.ml"
             in
            _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv1170)) : 'freshtv1172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1173 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1174)) : 'freshtv1176)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1179 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1177 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_c1_, _menhir_s, (c1 : 'tv_condition), _startpos_c1_), _endpos_c2_, _, (c2 : 'tv_condition), _startpos_c2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_c1_ in
        let _endpos = _endpos_c2_ in
        let _v : 'tv_condition = let _endpos = _endpos_c2_ in
        let _startpos = _startpos_c1_ in
        let _loc = (_startpos, _endpos) in
        
# 344 "parser.mly"
                                             ( mkloc _loc @@Or{c1;c2})
# 4821 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv1178)) : 'freshtv1180)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1183 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1181 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_c1_, _menhir_s, (c1 : 'tv_condition), _startpos_c1_), _endpos_c2_, _, (c2 : 'tv_condition), _startpos_c2_) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_c1_ in
        let _endpos = _endpos_c2_ in
        let _v : 'tv_condition = let _endpos = _endpos_c2_ in
        let _startpos = _startpos_c1_ in
        let _loc = (_startpos, _endpos) in
        
# 343 "parser.mly"
                                             ( mkloc _loc @@And{c1;c2})
# 4839 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv1182)) : 'freshtv1184)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1191 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1187 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1185 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos__3_ : Lexing.position) = _endpos in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), _startpos__1_inlined1_), _endpos_x_, _, (x : 'tv_condition), _startpos_x_) = _menhir_stack in
            let _3 = () in
            let _1_inlined1 = () in
            let _1 = () in
            let _startpos = _startpos__1_ in
            let _endpos = _endpos__3_ in
            let _v : 'tv_condition = let c =
              let _1 = _1_inlined1 in
              let y = 
# 200 "<standard.mly>"
    ( x )
# 4871 "parser.ml"
               in
              
# 109 "parser.mly"
                                ( y )
# 4876 "parser.ml"
              
            in
            let _endpos_c_ = _endpos__3_ in
            let _endpos = _endpos_c_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 345 "parser.mly"
                                             ( mkloc _loc @@Not{c} )
# 4886 "parser.ml"
             in
            _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv1186)) : 'freshtv1188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1189 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1190)) : 'freshtv1192)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1197 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1193 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce165 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1194)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1195 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1196)) : 'freshtv1198)
    | MenhirState252 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1203 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1199 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce165 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1201 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1202)) : 'freshtv1204)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1209 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1205 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState311 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState311 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState311) : 'freshtv1206)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1207 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1208)) : 'freshtv1210)
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1215 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | DO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1211 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState314 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState314) : 'freshtv1212)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1213 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1214)) : 'freshtv1216)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1221 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1217 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState327 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState327 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState327) : 'freshtv1218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1219 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1220)) : 'freshtv1222)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1227 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1223 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState337 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState337 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState337) : 'freshtv1224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1225 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1226)) : 'freshtv1228)
    | MenhirState392 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1233 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1229 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState394 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState394) : 'freshtv1230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1231 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1232)) : 'freshtv1234)
    | MenhirState422 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1239 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1235 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState424 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState424 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState424) : 'freshtv1236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1237 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1238)) : 'freshtv1240)
    | MenhirState443 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1245 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AMPERSAND ->
            _menhir_run133 _menhir_env (Obj.magic _menhir_stack)
        | Or ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1241 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSERT ->
                _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BEGIN ->
                _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CASE ->
                _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IDENT _v ->
                _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState445 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | IF ->
                _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ILL_TYPED ->
                _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_INT ->
                _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | PRINT_TYPE ->
                _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | Skip ->
                _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | VAR ->
                _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | WHILE ->
                _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState445 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState445) : 'freshtv1242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1243 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1244)) : 'freshtv1246)
    | _ ->
        _menhir_fail ()

and _menhir_reduce130 : _menhir_env -> ((('ttv_tail * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let (((_menhir_stack, _menhir_s, (x : 'tv_range), _startpos_x_), _, _startpos__1_), _endpos_x_inlined1_, _, (x_inlined1 : 'tv_term), _startpos_x_inlined1_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_ranges = let t =
      let x = x_inlined1 in
      
# 200 "<standard.mly>"
    ( x )
# 5301 "parser.ml"
      
    in
    
# 436 "parser.mly"
                                                 ( ([x],t) )
# 5307 "parser.ml"
     in
    _menhir_goto_ranges _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1125 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1123 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_term), _startpos_x_), _), _, (xs : 'tv_separated_nonempty_list_COMMA_term_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_term_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 5325 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1124)) : 'freshtv1126)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1131 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1127 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce178 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1129 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1130)) : 'freshtv1132)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1137 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1133 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce178 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1134)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1135 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1136)) : 'freshtv1138)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1143 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1139 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1141 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1142)) : 'freshtv1144)
    | MenhirState359 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1153 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1149 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COL_EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1145 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Bool ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LCURLY ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MAXINT ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MININT ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NUM _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Pred ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Rec ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING_LITERAL _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Succ ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState362 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState362) : 'freshtv1146)
            | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
                _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1147 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1148)) : 'freshtv1150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1151 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1152)) : 'freshtv1154)
    | MenhirState451 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1159 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1155 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1156)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv1157 * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1158)) : 'freshtv1160)
    | MenhirState464 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv1167 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1163 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COL_EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv1161 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Bool ->
                    _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LCURLY ->
                    _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MAXINT ->
                    _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MININT ->
                    _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NUM _v ->
                    _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Pred ->
                    _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Rec ->
                    _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING_LITERAL _v ->
                    _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Succ ->
                    _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState467 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState467) : 'freshtv1162)
            | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
                _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_error466 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv1164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv1165 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1166)) : 'freshtv1168)
    | _ ->
        _menhir_fail ()

and _menhir_run40 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce75 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1119 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState42 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv1120)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1121 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1122)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 40 "parser.mly"
       (string)
# 5604 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce70 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1115 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState45 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Bool | FALSE | LCURLY | LPAREN | MAXINT | MININT | MINUS | NUM _ | Pred | Rec | STRING_LITERAL _ | Succ | TRUE ->
            _menhir_reduce125 _menhir_env (Obj.magic _menhir_stack) MenhirState45
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv1116)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1117 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1118)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1111 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState52 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv1112)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1113 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1114)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 39 "parser.mly"
       (string)
# 5697 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce71 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState54 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run55 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce73 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run56 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce72 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run57 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | INT ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NAT ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57
    | NAT1 ->
        _menhir_run58 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState57 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57

and _menhir_run60 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState60 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run64 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce74 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1107 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LCURLY ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NUM _v ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Not ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState66 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv1108)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1109 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1110)

and _menhir_run72 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState72 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_run83 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState83 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run115 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState115 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_run89 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState89 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run117 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce167 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s

and _menhir_run74 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1103 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 6059 "parser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce180 _menhir_env (Obj.magic _menhir_stack) _endpos _v _startpos) : 'freshtv1104)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1105 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1106)

and _menhir_run93 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState93 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93

and _menhir_run95 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState95 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95

and _menhir_run97 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState97 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97

and _menhir_run118 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState118 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run120 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState120 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120

and _menhir_run122 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState122 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122

and _menhir_run124 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState124 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124

and _menhir_run126 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState126 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126

and _menhir_run103 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState103 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103

and _menhir_error105 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_interval_BO -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_separated_nonempty_list_SEMICOL_valuation_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOL_valuation_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState292 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1091 * Lexing.position * _menhir_state * 'tv_valuation)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_valuation_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1089 * Lexing.position * _menhir_state * 'tv_valuation)) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOL_valuation_) : 'tv_separated_nonempty_list_SEMICOL_valuation_) = _v in
        ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_valuation)) = _menhir_stack in
        let _2 = () in
        let _endpos = _endpos_xs_ in
        let _v : 'tv_separated_nonempty_list_SEMICOL_valuation_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 6448 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOL_valuation_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1090)) : 'freshtv1092)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1101 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_valuation_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1099 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_bindings_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((bindings : 'tv_separated_nonempty_list_SEMICOL_valuation_) : 'tv_separated_nonempty_list_SEMICOL_valuation_) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_values = let _endpos = _endpos_bindings_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 248 "parser.mly"
     ( Some (mkloc _loc @@ Values {bindings}) )
# 6470 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1097) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_values) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1095) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_values) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1093) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_values) : 'tv_clause_values) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 6487 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1094)) : 'freshtv1096)) : 'freshtv1098)) : 'freshtv1100)) : 'freshtv1102)
    | _ ->
        _menhir_fail ()

and _menhir_reduce85 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_i_, _menhir_s, (i : 'tv_level1_instruction), _startpos_i_) = _menhir_stack in
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : 'tv_instruction = 
# 350 "parser.mly"
                           (i)
# 6501 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_SEMICOL_operation_BO_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOL_operation_BO_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1073 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1071 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_ops_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((ops : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_operations_BO = let _endpos = _endpos_ops_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 288 "parser.mly"
    ( Some (mkloc _loc @@ OperationsB0{ops;local=false}) )
# 6527 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1069) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_operations_BO) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1067) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_operations_BO) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1065) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_operations_BO) : 'tv_clause_operations_BO) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 6544 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1066)) : 'freshtv1068)) : 'freshtv1070)) : 'freshtv1072)) : 'freshtv1074)
    | MenhirState456 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1077 * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1075 * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos_xs_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let ((_menhir_stack, _menhir_s, (h : 'tv_header_operation), _startpos_h_), _endpos_i_, _, (i : 'tv_level1_instruction), _startpos_i_) = _menhir_stack in
        let _2 = () in
        let _2_inlined1 = () in
        let _endpos = _endpos_xs_ in
        let _v : 'tv_separated_nonempty_list_SEMICOL_operation_BO_ = let x =
          let _2 = _2_inlined1 in
          let _endpos = _endpos_i_ in
          let _startpos = _startpos_h_ in
          let _loc = (_startpos, _endpos) in
          
# 292 "parser.mly"
    ( mkloc _loc @@ {h;i} )
# 6570 "parser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 6576 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOL_operation_BO_ _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv1076)) : 'freshtv1078)
    | MenhirState475 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1087 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1085 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos_ops_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let ((ops : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) : 'tv_separated_nonempty_list_SEMICOL_operation_BO_) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_local_operations = let _endpos = _endpos_ops_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 296 "parser.mly"
    ( Some (mkloc _loc @@ OperationsB0{ops;local=true}) )
# 6598 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1083) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_local_operations) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1081) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_local_operations) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1079) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_local_operations) : 'tv_clause_local_operations) = _v in
        ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 6615 "parser.ml"
         in
        _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1080)) : 'freshtv1082)) : 'freshtv1084)) : 'freshtv1086)) : 'freshtv1088)
    | _ ->
        _menhir_fail ()

and _menhir_reduce9 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> Lexing.position -> _menhir_state -> 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_xs_ _ (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) ->
    let (_menhir_stack, _endpos_name_, _menhir_s, (name : 'tv_ident_ren), _startpos_name_) = _menhir_stack in
    let (_, _endpos__0_) = Obj.magic _menhir_stack in
    let _startpos = _startpos_name_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_callup_instruction = let args = 
# 105 "parser.mly"
                                                                             ( xs )
# 6630 "parser.ml"
     in
    let _endpos_args_ = _endpos_xs_ in
    let ret_opt = 
# 400 "parser.mly"
      (None)
# 6636 "parser.ml"
     in
    let _startpos_ret_opt_ = _endpos__0_ in
    let _endpos = _endpos_args_ in
    let _startpos = _startpos_ret_opt_ in
    let _loc = (_startpos, _endpos) in
    
# 394 "parser.mly"
  ( let outs = none_is_empty_list ret_opt in 
    let outs = List.map mk_annot outs in 
    mkloc _loc @@ Call{outs;op=name;args} )
# 6647 "parser.ml"
     in
    _menhir_goto_callup_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce8 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> Lexing.position -> _menhir_state -> 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_xs_ _ (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) ->
    let ((_menhir_stack, _endpos_l_, _menhir_s, (l : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_l_), _endpos_name_, _, (name : 'tv_ident_ren), _startpos_name_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_l_ in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_callup_instruction = let args = 
# 105 "parser.mly"
                                                                             ( xs )
# 6660 "parser.ml"
     in
    let _endpos_args_ = _endpos_xs_ in
    let ret_opt = 
# 399 "parser.mly"
                                                                (Some l)
# 6666 "parser.ml"
     in
    let _startpos_ret_opt_ = _startpos_l_ in
    let _endpos = _endpos_args_ in
    let _startpos = _startpos_ret_opt_ in
    let _loc = (_startpos, _endpos) in
    
# 394 "parser.mly"
  ( let outs = none_is_empty_list ret_opt in 
    let outs = List.map mk_annot outs in 
    mkloc _loc @@ Call{outs;op=name;args} )
# 6677 "parser.ml"
     in
    _menhir_goto_callup_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce96 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_becomes_equal_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos_i_ _menhir_s (i : 'tv_becomes_equal_instruction) _startpos_i_ ->
    let _startpos = _startpos_i_ in
    let _endpos = _endpos_i_ in
    let _v : 'tv_level1_instruction = 
# 365 "parser.mly"
                         (i)
# 6688 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce123 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_preceded_VARIANT_term__ = 
# 114 "<standard.mly>"
    ( None )
# 6697 "parser.ml"
     in
    _menhir_goto_option_preceded_VARIANT_term__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run403 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState403 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState403

and _menhir_reduce94 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_xs_, _, (xs : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_xs_), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_) = _menhir_stack in
    let _5 = () in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 359 "parser.mly"
           ( let xs = List.map mk_annot xs in
             mkloc _loc @@ Var{xs;i} )
# 6755 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ = 
# 211 "<standard.mly>"
    ( [] )
# 6764 "parser.ml"
     in
    _menhir_goto_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run392 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState392 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState392

and _menhir_goto_option_preceded_ELSE_instruction__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_preceded_ELSE_instruction__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState385 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv1041 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv1037 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | END ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv1033 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1034)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv1035 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1036)) : 'freshtv1038)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv1039 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1040)) : 'freshtv1042)
    | MenhirState397 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1047 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1043 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1044)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1045 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1046)) : 'freshtv1048)
    | MenhirState426 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1053 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1049 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce81 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1050)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1051 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1052)) : 'freshtv1054)
    | MenhirState436 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv1063 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv1059 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_stack = (_menhir_stack, _endpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | END ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv1055 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) * Lexing.position) = Obj.magic _menhir_stack in
                let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv1056)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((((('freshtv1057 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1058)) : 'freshtv1060)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv1061 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) * _menhir_state * 'tv_option_preceded_ELSE_instruction__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1062)) : 'freshtv1064)
    | _ ->
        _menhir_fail ()

and _menhir_reduce113 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ = 
# 211 "<standard.mly>"
    ( [] )
# 6927 "parser.ml"
     in
    _menhir_goto_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run377 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState377 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState377

and _menhir_reduce93 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 357 "parser.mly"
                                                 ( mkloc _loc @@ Block{i} )
# 6967 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce86 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_i1_, _menhir_s, (i1 : 'tv_instruction), _startpos_i1_), _), _endpos_i2_, _, (i2 : 'tv_instruction), _startpos_i2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_i1_ in
    let _endpos = _endpos_i2_ in
    let _v : 'tv_instruction = let _endpos = _endpos_i2_ in
    let _startpos = _startpos_i1_ in
    let _loc = (_startpos, _endpos) in
    
# 352 "parser.mly"
                                            (mkloc _loc @@ Seq{i1;i2})
# 6983 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run347 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BEGIN ->
        _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CASE ->
        _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState347 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ILL_TYPED ->
        _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_INT ->
        _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_TYPE ->
        _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Skip ->
        _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState347 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState347

and _menhir_reduce100 : _menhir_env -> ((('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> Lexing.position -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__5_ _ ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _endpos_c_, _, (c : 'tv_condition), _startpos_c_), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_) = _menhir_stack in
    let _5 = () in
    let _3 = () in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__5_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 366 "parser.mly"
                                                   (mkloc _loc @@ Assert{c;i})
# 7034 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_list_clause_implementation_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_clause_implementation_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1027 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7047 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7051 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1023 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7061 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7065 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1021 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7073 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7077 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
            let (_endpos__7_ : Lexing.position) = _endpos in
            ((let (((((_menhir_stack, _startpos__1_), _endpos_name_, (name : (
# 38 "parser.mly"
       (Ast.ident)
# 7083 "parser.ml"
            )), _startpos_name_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _endpos_x_, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 7087 "parser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_clause_implementation_)) = _menhir_stack in
            let _7 = () in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_implementation = let xs = 
# 105 "parser.mly"
                                                                             ( xs )
# 7095 "parser.ml"
             in
            let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 150 "parser.mly"
    ( let parameters = List.map mk_annot xs in
      let cs = List.filter_map (fun x -> x) cs in
      mkloc _loc @@ Component{name;parameters;component_type=Implementation{component_name=x};clauses=cs} )
# 7105 "parser.ml"
             in
            _menhir_goto_implementation _menhir_env _menhir_stack _v) : 'freshtv1022)) : 'freshtv1024)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv1025 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7115 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7119 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1026)) : 'freshtv1028)
    | MenhirState497 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1031 * _menhir_state * 'tv_clause_implementation) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1029 * _menhir_state * 'tv_clause_implementation) * _menhir_state * 'tv_list_clause_implementation_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_clause_implementation)), _, (xs : 'tv_list_clause_implementation_)) = _menhir_stack in
        let _v : 'tv_list_clause_implementation_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 7132 "parser.ml"
         in
        _menhir_goto_list_clause_implementation_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1030)) : 'freshtv1032)
    | _ ->
        _menhir_fail ()

and _menhir_run299 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 7141 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
    | DOT ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
    | EQ | LPAREN ->
        _menhir_reduce151 _menhir_env (Obj.magic _menhir_stack)
    | LT_MINUS_MINUS ->
        _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1019 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7163 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1020)

and _menhir_run309 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState309 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState309

and _menhir_run410 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState410 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState410

and _menhir_run415 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce95 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos

and _menhir_run416 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState416 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState416

and _menhir_run418 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState418 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState418

and _menhir_run420 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState420 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState420

and _menhir_run422 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState422 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState422

and _menhir_run429 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState429 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState429 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState429

and _menhir_run440 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BEGIN ->
        _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CASE ->
        _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState440 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ILL_TYPED ->
        _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_INT ->
        _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_TYPE ->
        _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Skip ->
        _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState440 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState440

and _menhir_run443 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | Bool ->
        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FALSE ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LCURLY ->
        _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MAXINT ->
        _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MININT ->
        _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MINUS ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | NUM _v ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Not ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Pred ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Rec ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING_LITERAL _v ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Succ ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TRUE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState443 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState443

and _menhir_goto_list_clause_abstract_machine_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_clause_abstract_machine_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv1013 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7495 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1009 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7505 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1007 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7513 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
            let (_endpos__5_ : Lexing.position) = _endpos in
            ((let ((((_menhir_stack, _startpos__1_), _endpos_name_, (name : (
# 38 "parser.mly"
       (Ast.ident)
# 7519 "parser.ml"
            )), _startpos_name_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _, (cs : 'tv_list_clause_abstract_machine_)) = _menhir_stack in
            let _5 = () in
            let _1 = () in
            let _v : 'tv_abstract_machine = let parameters = 
# 105 "parser.mly"
                                                                             ( xs )
# 7526 "parser.ml"
             in
            let _endpos = _endpos__5_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 122 "parser.mly"
    ( let parameters = List.map mk_annot parameters in 
      let cs = List.filter_map (fun x -> x) cs in
      mkloc _loc @@ Component{name;parameters;component_type=Abstract_machine;clauses=cs} )
# 7536 "parser.ml"
             in
            _menhir_goto_abstract_machine _menhir_env _menhir_stack _v) : 'freshtv1008)) : 'freshtv1010)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv1011 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7546 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1012)) : 'freshtv1014)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1017 * _menhir_state * 'tv_clause_abstract_machine) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1015 * _menhir_state * 'tv_clause_abstract_machine) * _menhir_state * 'tv_list_clause_abstract_machine_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_clause_abstract_machine)), _, (xs : 'tv_list_clause_abstract_machine_)) = _menhir_stack in
        let _v : 'tv_list_clause_abstract_machine_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 7559 "parser.ml"
         in
        _menhir_goto_list_clause_abstract_machine_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1016)) : 'freshtv1018)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_clause_refinement_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_clause_refinement_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv1001 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7574 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7578 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv997 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7588 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7592 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv995 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7600 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7604 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
            let (_endpos__7_ : Lexing.position) = _endpos in
            ((let (((((_menhir_stack, _startpos__1_), _endpos_name_, (name : (
# 38 "parser.mly"
       (Ast.ident)
# 7610 "parser.ml"
            )), _startpos_name_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _endpos_x_, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 7614 "parser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_clause_refinement_)) = _menhir_stack in
            let _7 = () in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_refinement = let parameters = 
# 105 "parser.mly"
                                                                             ( xs )
# 7622 "parser.ml"
             in
            let _endpos = _endpos__7_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 142 "parser.mly"
    ( let parameters = List.map mk_annot parameters in 
      let cs = List.filter_map (fun x -> x) cs in
      mkloc _loc @@ Component{name;parameters;component_type=Refinement{component_name=x};clauses=cs} )
# 7632 "parser.ml"
             in
            _menhir_goto_refinement _menhir_env _menhir_stack _v) : 'freshtv996)) : 'freshtv998)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv999 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7642 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 7646 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv1000)) : 'freshtv1002)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1005 * _menhir_state * 'tv_clause_refinement) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv1003 * _menhir_state * 'tv_clause_refinement) * _menhir_state * 'tv_list_clause_refinement_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_clause_refinement)), _, (xs : 'tv_list_clause_refinement_)) = _menhir_stack in
        let _v : 'tv_list_clause_refinement_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 7659 "parser.ml"
         in
        _menhir_goto_list_clause_refinement_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv1004)) : 'freshtv1006)
    | _ ->
        _menhir_fail ()

and _menhir_run16 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 7668 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv993 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7680 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LCURLY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv989 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7690 "parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv990)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv991 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7710 "parser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            (_menhir_error16 _menhir_env (Obj.magic _menhir_stack) : 'freshtv992)) : 'freshtv994)
    | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | USES | VALUES ->
        _menhir_reduce161 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_error16 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 7723 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv987 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7735 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState27 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv988)
    | AMPERSAND | COL_EQ | COMMA | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DO | DOT_DOT | ELSE | ELSIF | END | EQ | EXTENDS | GT | GT_EQ | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | LPAREN | LT | LT_EQ | LT_MINUS_MINUS | MINUS | Mod | OPERATIONS | OR | Or | PIPE_MINUS_GT | PLUS | PROMOTES | QUOTE | RCURLY | RPAREN | SEES | SEMICOL | SETS | SLASH | SLASH_EQ | STAR | STAR_STAR | THEN | USES | VALUES | VARIANT ->
        _menhir_reduce151 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_error26 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run172 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 7756 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv985 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7768 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run172 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState173 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState173) : 'freshtv986)
    | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INCLUDES | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | USES | VALUES ->
        _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_error172 _menhir_env (Obj.magic _menhir_stack)

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv947 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7795 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce136 _menhir_env (Obj.magic _menhir_stack) : 'freshtv948)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv951 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error9 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv949 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv950)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error9 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv952)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv957 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7821 "parser.ml"
        ) * Lexing.position)) * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error19 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RCURLY ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv955 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7833 "parser.ml"
              ) * Lexing.position)) * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv953 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7841 "parser.ml"
              ) * Lexing.position)) * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos__5_ : Lexing.position) = _endpos in
              ((let (((_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 7847 "parser.ml"
              )), _startpos_x_), _startpos__3_), _endpos_enum_, _, (enum : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_enum_) = _menhir_stack in
              let _5 = () in
              let _3 = () in
              let _2 = () in
              let _endpos = _endpos__5_ in
              let _v : 'tv_set = 
# 238 "parser.mly"
    ( DefSet{x;enum})
# 7856 "parser.ml"
               in
              _menhir_goto_set _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv954)) : 'freshtv956)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error19 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv958)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv959 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 7868 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce136 _menhir_env (Obj.magic _menhir_stack) : 'freshtv960)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv963 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv961 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_cs_, _, (cs : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_cs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_concrete_constants = let _endpos = _endpos_cs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 244 "parser.mly"
    ( Some (mkloc _loc @@ Concrete_constants {cs}) )
# 7884 "parser.ml"
         in
        _menhir_goto_clause_concrete_constants _menhir_env _menhir_stack _menhir_s _v) : 'freshtv962)) : 'freshtv964)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv967 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv965 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_cs_, _, (cs : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_cs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_concrete_constants = let _endpos = _endpos_cs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 244 "parser.mly"
    ( Some (mkloc _loc @@ Concrete_constants {cs}) )
# 7900 "parser.ml"
         in
        _menhir_goto_clause_concrete_constants _menhir_env _menhir_stack _menhir_s _v) : 'freshtv966)) : 'freshtv968)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv971 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error195 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv969 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce116 _menhir_env (Obj.magic _menhir_stack) _endpos) : 'freshtv970)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error195 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv972)
    | MenhirState475 | MenhirState456 | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv975 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error301 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LT_MINUS_MINUS ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv973 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState302 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState302) : 'freshtv974)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error301 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv976)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv979 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error316 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv977 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | ASSERT ->
                  _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | BEGIN ->
                  _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | CASE ->
                  _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | ILL_TYPED ->
                  _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_INT ->
                  _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_TYPE ->
                  _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Skip ->
                  _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | VAR ->
                  _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | WHILE ->
                  _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState317 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState317) : 'freshtv978)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error316 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv980)
    | MenhirState410 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv983 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error411 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv981 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | ASSERT ->
                  _menhir_run335 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | BEGIN ->
                  _menhir_run334 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | CASE ->
                  _menhir_run328 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState412 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run325 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | ILL_TYPED ->
                  _menhir_run323 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_INT ->
                  _menhir_run321 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_TYPE ->
                  _menhir_run319 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Skip ->
                  _menhir_run318 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | VAR ->
                  _menhir_run315 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | WHILE ->
                  _menhir_run312 _menhir_env (Obj.magic _menhir_stack) MenhirState412 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState412) : 'freshtv982)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error411 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv984)
    | _ ->
        _menhir_fail ()

and _menhir_reduce161 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 8039 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 8045 "parser.ml"
    )), _startpos_x_) = _menhir_stack in
    let _endpos = _endpos_x_ in
    let _v : 'tv_set = 
# 236 "parser.mly"
              ( SetIdent{x} )
# 8051 "parser.ml"
     in
    _menhir_goto_set _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce157 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_set -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_set)) = _menhir_stack in
    let _endpos = _endpos_x_ in
    let _v : 'tv_separated_nonempty_list_SEMICOL_set_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 8062 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_SEMICOL_set_ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce151 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 8069 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 8075 "parser.ml"
    )), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : 'tv_separated_nonempty_list_DOT_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 8082 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_DOT_IDENT_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_goto_separated_nonempty_list_COMMA_ident_ren_ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ident_ren_ -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv887 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv885 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_mchs_, _, (mchs : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_mchs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_sees = let _endpos = _endpos_mchs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 202 "parser.mly"
    ( Some (mkloc _loc @@ Sees {mchs}) )
# 8103 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv883) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_sees) = _v in
        ((match _menhir_s with
        | MenhirState184 | MenhirState13 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv873) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sees) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv871) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sees) : 'tv_clause_sees) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 8122 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv872)) : 'freshtv874)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv877) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sees) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv875) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sees) : 'tv_clause_sees) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 8137 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv876)) : 'freshtv878)
        | MenhirState497 | MenhirState218 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv881) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_sees) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv879) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_sees) : 'tv_clause_sees) = _v in
            ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 8152 "parser.ml"
             in
            _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv880)) : 'freshtv882)
        | _ ->
            _menhir_fail ()) : 'freshtv884)) : 'freshtv886)) : 'freshtv888)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv889 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce142 _menhir_env (Obj.magic _menhir_stack) : 'freshtv890)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv907 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv905 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_mchs_, _, (mchs : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_mchs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_promotes = let _endpos = _endpos_mchs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 217 "parser.mly"
    ( Some (mkloc _loc @@ Promotes {mchs}) )
# 8174 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv903) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_promotes) = _v in
        ((match _menhir_s with
        | MenhirState13 | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv893) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_promotes) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv891) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_promotes) : 'tv_clause_promotes) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 8193 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv892)) : 'freshtv894)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv897) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_promotes) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv895) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_promotes) : 'tv_clause_promotes) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 8208 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv896)) : 'freshtv898)
        | MenhirState497 | MenhirState218 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv901) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_promotes) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv899) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_promotes) : 'tv_clause_promotes) = _v in
            ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 8223 "parser.ml"
             in
            _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv900)) : 'freshtv902)
        | _ ->
            _menhir_fail ()) : 'freshtv904)) : 'freshtv906)) : 'freshtv908)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv925 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv923 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_xs_, _, (xs : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_xs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_concrete_variables = let _endpos = _endpos_xs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 260 "parser.mly"
    ( let xs = List.map mk_annot xs in
       Some (mkloc _loc @@ Concrete_variables{xs}) )
# 8242 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv921) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_concrete_variables) = _v in
        ((match _menhir_s with
        | MenhirState13 | MenhirState184 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv911) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_concrete_variables) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv909) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_concrete_variables) : 'tv_clause_concrete_variables) = _v in
            ((let _v : 'tv_clause_refinement = 
# 180 "parser.mly"
    (c)
# 8261 "parser.ml"
             in
            _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv910)) : 'freshtv912)
        | MenhirState211 | MenhirState197 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv915) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_concrete_variables) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv913) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_concrete_variables) : 'tv_clause_concrete_variables) = _v in
            ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 8276 "parser.ml"
             in
            _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv914)) : 'freshtv916)
        | MenhirState218 | MenhirState497 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv919) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_clause_concrete_variables) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv917) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((c : 'tv_clause_concrete_variables) : 'tv_clause_concrete_variables) = _v in
            ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 8291 "parser.ml"
             in
            _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv918)) : 'freshtv920)
        | _ ->
            _menhir_fail ()) : 'freshtv922)) : 'freshtv924)) : 'freshtv926)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv935 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv933 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_mchs_, _, (mchs : 'tv_separated_nonempty_list_COMMA_ident_ren_), _startpos_mchs_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_clause_uses = let _endpos = _endpos_mchs_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 229 "parser.mly"
    ( Some (mkloc _loc @@ Uses {mchs}) )
# 8309 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv931) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_uses) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv929) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_clause_uses) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv927) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((c : 'tv_clause_uses) : 'tv_clause_uses) = _v in
        ((let _v : 'tv_clause_abstract_machine = 
# 137 "parser.mly"
    (c)
# 8326 "parser.ml"
         in
        _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v) : 'freshtv928)) : 'freshtv930)) : 'freshtv932)) : 'freshtv934)) : 'freshtv936)
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState394 | MenhirState327 | MenhirState386 | MenhirState379 | MenhirState333 | MenhirState334 | MenhirState347 | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv939 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error338 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LT_MINUS_MINUS ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv937 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run61 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState339 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState339) : 'freshtv938)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error338 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv940)
    | MenhirState364 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv941 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce142 _menhir_env (Obj.magic _menhir_stack) : 'freshtv942)
    | MenhirState480 | MenhirState477 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv945 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error448 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | LT_MINUS_MINUS ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv943 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState449 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState449) : 'freshtv944)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error448 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv946)
    | _ ->
        _menhir_fail ()

and _menhir_reduce117 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_, _endpos) = Obj.magic _menhir_stack in
    let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ = 
# 142 "<standard.mly>"
    ( [] )
# 8390 "parser.ml"
     in
    _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ _menhir_env _menhir_stack _endpos _v

and _menhir_reduce145 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_ident_ren), _startpos_x_), _endpos_xs_, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__)) = _menhir_stack in
    let _endpos = _endpos_xs_ in
    let _v : 'tv_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ = let x =
      let y = 
# 105 "parser.mly"
                                                                             ( xs )
# 8402 "parser.ml"
       in
      
# 167 "<standard.mly>"
    ( (x, y) )
# 8407 "parser.ml"
      
    in
    
# 241 "<standard.mly>"
    ( [ x ] )
# 8413 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_pair_ident_ren_plist_instantiation_BO___ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_clause_refinement : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause_refinement -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv869 * _menhir_state * 'tv_clause_refinement) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | CONCRETE_CONSTANTS ->
          _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONCRETE_VARIABLES ->
          _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONSTANTS ->
          _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | EXTENDS ->
          _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | INCLUDES ->
          _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | PROMOTES ->
          _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SEES ->
          _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SETS ->
          _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState184 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | END ->
          _menhir_reduce109 _menhir_env (Obj.magic _menhir_stack) MenhirState184
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState184)) : 'freshtv870)

and _menhir_goto_clause_abstract_machine : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause_abstract_machine -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv867 * _menhir_state * 'tv_clause_abstract_machine) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | CONCRETE_CONSTANTS ->
          _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONCRETE_VARIABLES ->
          _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONSTANTS ->
          _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | EXTENDS ->
          _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | INCLUDES ->
          _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | PROMOTES ->
          _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SEES ->
          _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SETS ->
          _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | USES ->
          _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | END ->
          _menhir_reduce105 _menhir_env (Obj.magic _menhir_stack) MenhirState211
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211)) : 'freshtv868)

and _menhir_goto_component : _menhir_env -> 'ttv_tail -> 'tv_component -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv865 * 'tv_component) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv861 * 'tv_component) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv859 * 'tv_component) = Obj.magic _menhir_stack in
        let (_endpos__2_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, (m : 'tv_component)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 43 "parser.mly"
       (Ast.component)
# 8505 "parser.ml"
        ) = 
# 114 "parser.mly"
                      ( m )
# 8509 "parser.ml"
         in
        _menhir_goto_component_eof _menhir_env _menhir_stack _v) : 'freshtv860)) : 'freshtv862)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv863 * 'tv_component) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _) = _menhir_stack in
        _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv864)) : 'freshtv866)

and _menhir_run221 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 8523 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DOT ->
        _menhir_run62 _menhir_env (Obj.magic _menhir_stack)
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv855 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 8537 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | Bool ->
            _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FALSE ->
            _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | INT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv849) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState222 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce90 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv850)
        | LCURLY ->
            _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MAXINT ->
            _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MININT ->
            _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MINUS ->
            _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | NAT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv851) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState222 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce88 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv852)
        | NAT1 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv853) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_menhir_s : _menhir_state) = MenhirState222 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            _menhir_reduce89 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv854)
        | NUM _v ->
            _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Pred ->
            _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Rec ->
            _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING_LITERAL _v ->
            _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Succ ->
            _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TRUE ->
            _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState222 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState222) : 'freshtv856)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv857 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 8602 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv858)

and _menhir_goto_ranges : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_ranges -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState359 | MenhirState362 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState164 | MenhirState39 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 | MenhirState83 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv841) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ranges) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce77 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv842)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv843 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ranges) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce131 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv844)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv845) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ranges) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce77 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv846)
    | MenhirState261 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv847 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_ranges) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce131 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv848)
    | _ ->
        _menhir_fail ()

and _menhir_goto_range : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_range -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState464 | MenhirState451 | MenhirState443 | MenhirState422 | MenhirState403 | MenhirState392 | MenhirState367 | MenhirState359 | MenhirState362 | MenhirState357 | MenhirState341 | MenhirState335 | MenhirState325 | MenhirState323 | MenhirState321 | MenhirState319 | MenhirState312 | MenhirState309 | MenhirState268 | MenhirState263 | MenhirState252 | MenhirState244 | MenhirState235 | MenhirState226 | MenhirState164 | MenhirState39 | MenhirState42 | MenhirState50 | MenhirState52 | MenhirState54 | MenhirState57 | MenhirState140 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 | MenhirState69 | MenhirState126 | MenhirState124 | MenhirState122 | MenhirState120 | MenhirState118 | MenhirState115 | MenhirState79 | MenhirState110 | MenhirState81 | MenhirState103 | MenhirState87 | MenhirState99 | MenhirState97 | MenhirState93 | MenhirState95 | MenhirState89 | MenhirState83 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv831 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv827 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState79 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LCURLY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv825 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState79 in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Bool ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LCURLY ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MAXINT ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MININT ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NUM _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Pred ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Rec ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING_LITERAL _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Succ ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState110 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv826)
            | LPAREN ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv828)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv829 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv830)) : 'freshtv832)
    | MenhirState469 | MenhirState467 | MenhirState462 | MenhirState420 | MenhirState418 | MenhirState416 | MenhirState222 | MenhirState287 | MenhirState285 | MenhirState281 | MenhirState283 | MenhirState279 | MenhirState277 | MenhirState275 | MenhirState261 | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv839 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv835 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState261 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LCURLY ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv833 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState261 in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | Bool ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FALSE ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | IDENT _v ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LCURLY ->
                    _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LPAREN ->
                    _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MAXINT ->
                    _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MININT ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MINUS ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | NUM _v ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Pred ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Rec ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING_LITERAL _v ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | Succ ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TRUE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState263 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState263) : 'freshtv834)
            | LPAREN ->
                _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState261 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState261) : 'freshtv836)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv837 * _menhir_state * 'tv_range * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv838)) : 'freshtv840)
    | _ ->
        _menhir_fail ()

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_term -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv671 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOT_DOT ->
              _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | EQ ->
              _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | GT ->
              _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | GT_EQ ->
              _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | LT ->
              _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | LT_EQ ->
              _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | RPAREN ->
              _menhir_run117 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState71
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | SLASH_EQ ->
              _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)) : 'freshtv672)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState73
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState73
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | THEN | VARIANT ->
              _menhir_reduce175 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73)) : 'freshtv674)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv675 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOT_DOT ->
              _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState82
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82)) : 'freshtv676)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv677 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState84
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | THEN | VARIANT ->
              _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84)) : 'freshtv678)
    | MenhirState464 | MenhirState451 | MenhirState359 | MenhirState341 | MenhirState268 | MenhirState99 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv683 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv679 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState88 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState99 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv680)
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState88
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv681 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_term), _startpos_x_) = _menhir_stack in
              let _v : 'tv_separated_nonempty_list_COMMA_term_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 8967 "parser.ml"
               in
              _menhir_goto_separated_nonempty_list_COMMA_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv682)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88)) : 'freshtv684)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv685 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState90
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState90
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | THEN | VARIANT ->
              _menhir_reduce173 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90)) : 'freshtv686)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv687 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState94
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState94
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState94
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState94
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH_EQ | THEN | VARIANT ->
              _menhir_reduce170 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94)) : 'freshtv688)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv689 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState96
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState96
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | THEN | VARIANT ->
              _menhir_reduce174 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96)) : 'freshtv690)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv691 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState98
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH_EQ | THEN | VARIANT ->
              _menhir_reduce171 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)) : 'freshtv692)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv693 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState104
          | RPAREN ->
              _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)) : 'freshtv694)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv697 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | RCURLY ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv695 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState111 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce130 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv696)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState111
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111)) : 'freshtv698)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv701 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState116
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv699 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 338 "parser.mly"
                               ( mkloc _loc @@Compare{op=Neq;a1;a2} )
# 9154 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv700)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116)) : 'freshtv702)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv705 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState119
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv703 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 340 "parser.mly"
                               ( mkloc _loc @@Compare{op=Le;a1;a2} )
# 9196 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv704)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)) : 'freshtv706)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv709 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState121
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv707 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 339 "parser.mly"
                               ( mkloc _loc @@Compare{op=Lt;a1;a2} )
# 9238 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv708)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)) : 'freshtv710)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv713 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState123
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv711 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 342 "parser.mly"
                               ( mkloc _loc @@Compare{op=Ge;a1;a2} )
# 9280 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv712)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123)) : 'freshtv714)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv717 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState125
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv715 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 341 "parser.mly"
                               ( mkloc _loc @@Compare{op=Gt;a1;a2} )
# 9322 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv716)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125)) : 'freshtv718)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv721 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState127
          | AMPERSAND | DO | Or | RPAREN | THEN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv719 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
              let _2 = () in
              let _startpos = _startpos_a1_ in
              let _endpos = _endpos_a2_ in
              let _v : 'tv_condition = let _endpos = _endpos_a2_ in
              let _startpos = _startpos_a1_ in
              let _loc = (_startpos, _endpos) in
              
# 337 "parser.mly"
                               ( mkloc _loc @@Compare{op=Eq;a1;a2} )
# 9364 "parser.ml"
               in
              _menhir_goto_condition _menhir_env _menhir_stack _endpos _menhir_s _v _startpos) : 'freshtv720)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)) : 'freshtv722)
    | MenhirState443 | MenhirState422 | MenhirState392 | MenhirState335 | MenhirState325 | MenhirState312 | MenhirState309 | MenhirState252 | MenhirState66 | MenhirState68 | MenhirState133 | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | EQ ->
              _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | GT ->
              _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | GT_EQ ->
              _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | LT ->
              _menhir_run120 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | LT_EQ ->
              _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | SLASH_EQ ->
              _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState131
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131)) : 'freshtv724)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv727 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState141
          | COMMA | RCURLY ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv725 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let ((_menhir_stack, _endpos_s_, _menhir_s, (s : 'tv_simple_term), _startpos_s_), _endpos_t_, _, (t : 'tv_term), _startpos_t_) = _menhir_stack in
              let _2 = () in
              let _v : 'tv_array_ext_body = 
# 431 "parser.mly"
                                       (([s],t))
# 9439 "parser.ml"
               in
              _menhir_goto_array_ext_body _menhir_env _menhir_stack _menhir_s _v) : 'freshtv726)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141)) : 'freshtv728)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOT_DOT ->
              _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | RPAREN ->
              _menhir_run117 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState151
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState151
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151)) : 'freshtv730)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState152
          | AMPERSAND | COMMA | DO | DOT_DOT | ELSE | ELSIF | END | EQ | GT | GT_EQ | LT | LT_EQ | MINUS | Mod | OR | Or | PLUS | RCURLY | RPAREN | SEMICOL | SLASH | SLASH_EQ | STAR | STAR_STAR | THEN | VARIANT ->
              _menhir_reduce169 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152)) : 'freshtv732)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv735 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv733 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState153 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce177 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv734)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState153
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153)) : 'freshtv736)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv741 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | COMMA ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv737 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState155 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run46 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState156 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Bool | FALSE | LCURLY | LPAREN | MAXINT | MININT | MINUS | NUM _ | Pred | Rec | STRING_LITERAL _ | Succ | TRUE ->
                  _menhir_reduce125 _menhir_env (Obj.magic _menhir_stack) MenhirState156
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState156) : 'freshtv738)
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState155
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv739 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let ((_menhir_stack, _menhir_s, (x : 'tv_option_terminated_IDENT_COL__)), _endpos_y_, _, (y : 'tv_term), _startpos_y_) = _menhir_stack in
              let _v : 'tv_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ = let x = 
# 167 "<standard.mly>"
    ( (x, y) )
# 9570 "parser.ml"
               in
              
# 241 "<standard.mly>"
    ( [ x ] )
# 9575 "parser.ml"
               in
              _menhir_goto_separated_nonempty_list_COMMA_pair_option_terminated_IDENT_COL___term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv740)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155)) : 'freshtv742)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv745 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState158 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv743 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState158 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce176 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv744)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState158
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState158)) : 'freshtv746)
    | MenhirState164 | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState160 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState160
          | COMMA | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv757 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let (_menhir_stack, _endpos_i_, _menhir_s, (i : 'tv_term), _startpos_i_) = _menhir_stack in
              let _v : 'tv_instantiation_BO = 
# 194 "parser.mly"
             (i)
# 9644 "parser.ml"
               in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv755) = _menhir_stack in
              let (_menhir_s : _menhir_state) = _menhir_s in
              let (_v : 'tv_instantiation_BO) = _v in
              ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv753 * _menhir_state * 'tv_instantiation_BO) = Obj.magic _menhir_stack in
              ((assert (not _menhir_env._menhir_error);
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | COMMA ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv747 * _menhir_state * 'tv_instantiation_BO) = Obj.magic _menhir_stack in
                  ((let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | Bool ->
                      _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | FALSE ->
                      _menhir_run64 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | IDENT _v ->
                      _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | LCURLY ->
                      _menhir_run60 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | LPAREN ->
                      _menhir_run57 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MAXINT ->
                      _menhir_run56 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MININT ->
                      _menhir_run55 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | MINUS ->
                      _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | NUM _v ->
                      _menhir_run53 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | Pred ->
                      _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | Rec ->
                      _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | STRING_LITERAL _v ->
                      _menhir_run43 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | Succ ->
                      _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | TRUE ->
                      _menhir_run40 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState164 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv748)
              | RPAREN ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv749 * _menhir_state * 'tv_instantiation_BO) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _menhir_s, (x : 'tv_instantiation_BO)) = _menhir_stack in
                  let _v : 'tv_separated_nonempty_list_COMMA_instantiation_BO_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 9701 "parser.ml"
                   in
                  _menhir_goto_separated_nonempty_list_COMMA_instantiation_BO_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv750)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : 'freshtv751 * _menhir_state * 'tv_instantiation_BO) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv752)) : 'freshtv754)) : 'freshtv756)) : 'freshtv758)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState160)) : 'freshtv760)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv763 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState227 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv761 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState227 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce176 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv762)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState227
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState227)) : 'freshtv764)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv767 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState236 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv765 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState236 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce177 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv766)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState236
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState236)) : 'freshtv768)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv771 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOT_DOT ->
              _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState245 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv769 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState245 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce167 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv770)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState245
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState245)) : 'freshtv772)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv773 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState255
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | SLASH | STAR | STAR_STAR | VALUES ->
              _menhir_reduce169 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState255)) : 'freshtv774)
    | MenhirState263 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv777 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState264 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | RCURLY ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv775 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState264 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce130 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv776)
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState264
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState264)) : 'freshtv778)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv781 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 9870 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | DOT_DOT ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv779 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState274 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | Bool ->
                  _menhir_run251 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | FALSE ->
                  _menhir_run250 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LCURLY ->
                  _menhir_run247 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | LPAREN ->
                  _menhir_run244 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MAXINT ->
                  _menhir_run243 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MININT ->
                  _menhir_run242 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | MINUS ->
                  _menhir_run241 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | NUM _v ->
                  _menhir_run238 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Pred ->
                  _menhir_run234 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Rec ->
                  _menhir_run230 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | STRING_LITERAL _v ->
                  _menhir_run229 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Succ ->
                  _menhir_run225 _menhir_env (Obj.magic _menhir_stack) MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | TRUE ->
                  _menhir_run224 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState287 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState287) : 'freshtv780)
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState274 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState274
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce181 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState274)) : 'freshtv782)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv783 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState276
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState276
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState276
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | SLASH | STAR | VALUES ->
              _menhir_reduce175 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState276)) : 'freshtv784)
    | MenhirState277 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv785 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState278
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState278
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState278
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | SLASH | STAR | VALUES ->
              _menhir_reduce172 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState278)) : 'freshtv786)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv787 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState280
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState280
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState280
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | SLASH | STAR | VALUES ->
              _menhir_reduce173 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState280)) : 'freshtv788)
    | MenhirState281 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv789 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState282
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState282
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState282
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState282
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState282
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce170 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState282)) : 'freshtv790)
    | MenhirState283 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv791 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState284
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState284
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | Mod | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | SLASH | STAR | VALUES ->
              _menhir_reduce174 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState284)) : 'freshtv792)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv793 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState286
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState286
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState286
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState286
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState286
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState286
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | DOT_DOT | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | MINUS | OPERATIONS | PLUS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce171 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState286)) : 'freshtv794)
    | MenhirState287 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv795 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState288
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState288 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState288
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce91 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState288)) : 'freshtv796)
    | MenhirState319 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv797 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState320 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState320
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState320)) : 'freshtv798)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv799 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState322 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState322
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState322)) : 'freshtv800)
    | MenhirState323 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv801 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState324 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState324
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState324)) : 'freshtv802)
    | MenhirState357 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv803 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState358
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState358 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState358
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState358)) : 'freshtv804)
    | MenhirState362 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv805 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState363
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState363 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState363
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState363)) : 'freshtv806)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv807 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState368
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState368 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState368
          | ELSE | ELSIF | END | OR | SEMICOL | VARIANT ->
              _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState368)) : 'freshtv808)
    | MenhirState403 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv811 * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState404
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState404 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | PLUS ->
              _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | QUOTE ->
              _menhir_run74 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | SLASH ->
              _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | STAR ->
              _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | STAR_STAR ->
              _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState404
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv809 * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
              ((let ((_menhir_stack, _menhir_s), _endpos_x_, _, (x : 'tv_term), _startpos_x_) = _menhir_stack in
              let _1 = () in
              let _v : 'tv_option_preceded_VARIANT_term__ = let x = 
# 183 "<standard.mly>"
    ( x )
# 10283 "parser.ml"
               in
              
# 116 "<standard.mly>"
    ( Some x )
# 10288 "parser.ml"
               in
              _menhir_goto_option_preceded_VARIANT_term__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv810)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState404)) : 'freshtv812)
    | MenhirState416 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv813 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState417
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState417 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState417
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce103 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState417)) : 'freshtv814)
    | MenhirState418 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv815 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState419
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState419 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState419
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce102 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState419)) : 'freshtv816)
    | MenhirState420 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv817 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState421
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState421 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState421
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce104 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState421)) : 'freshtv818)
    | MenhirState462 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv819 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState463
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState463 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState463
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce7 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState463)) : 'freshtv820)
    | MenhirState467 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv821 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState468
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState468 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState468
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState468)) : 'freshtv822)
    | MenhirState469 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv823 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState470
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | MINUS ->
              _menhir_run285 _menhir_env (Obj.magic _menhir_stack) MenhirState470 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | Mod ->
              _menhir_run283 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | PLUS ->
              _menhir_run281 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | QUOTE ->
              _menhir_run256 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | SLASH ->
              _menhir_run279 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | STAR ->
              _menhir_run277 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | STAR_STAR ->
              _menhir_run275 _menhir_env (Obj.magic _menhir_stack) MenhirState470
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SEMICOL | SETS | VALUES ->
              _menhir_reduce5 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState470)) : 'freshtv824)
    | _ ->
        _menhir_fail ()

and _menhir_goto_interval_BO : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_interval_BO -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState244 | MenhirState57 | MenhirState69 | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv665 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_interval_BO) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error105 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv663 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_interval_BO) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv661 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_interval_BO) = Obj.magic _menhir_stack in
              let (_endpos__3_ : Lexing.position) = _endpos in
              ((let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_x_, _, (x : 'tv_interval_BO)) = _menhir_stack in
              let _3 = () in
              let _1 = () in
              let _startpos = _startpos__1_ in
              let _v : 'tv_range = let r =
                let y = 
# 200 "<standard.mly>"
    ( x )
# 10494 "parser.ml"
                 in
                
# 109 "parser.mly"
                                ( y )
# 10499 "parser.ml"
                
              in
              
# 443 "parser.mly"
                                   (Range_as_interval r)
# 10505 "parser.ml"
               in
              _menhir_goto_range _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv662)) : 'freshtv664)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error105 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv666)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv669 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 10517 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_interval_BO) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv667 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 10523 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_interval_BO) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 10528 "parser.ml"
        )), _startpos_x_), _endpos_i_, _, (i : 'tv_interval_BO)) = _menhir_stack in
        let _2 = () in
        let _endpos = _endpos_i_ in
        let _v : 'tv_valuation = 
# 253 "parser.mly"
                               ((x,IntervalValue i))
# 10535 "parser.ml"
         in
        _menhir_goto_valuation _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv668)) : 'freshtv670)
    | _ ->
        _menhir_fail ()

and _menhir_reduce159 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_valuation -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_valuation)) = _menhir_stack in
    let _endpos = _endpos_x_ in
    let _v : 'tv_separated_nonempty_list_SEMICOL_valuation_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 10548 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_SEMICOL_valuation_ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_level1_instruction : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_level1_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState394 | MenhirState327 | MenhirState386 | MenhirState379 | MenhirState333 | MenhirState334 | MenhirState347 | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653 * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce85 _menhir_env (Obj.magic _menhir_stack) : 'freshtv654)
    | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error455 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | SEMICOL ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  _menhir_run299 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState456 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState456) : 'freshtv656)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | VALUES ->
              _menhir_reduce155 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error455 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv658)
    | MenhirState480 | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv659 * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce85 _menhir_env (Obj.magic _menhir_stack) : 'freshtv660)
    | _ ->
        _menhir_fail ()

and _menhir_reduce155 : _menhir_env -> (('ttv_tail * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, (h : 'tv_header_operation), _startpos_h_), _endpos_i_, _, (i : 'tv_level1_instruction), _startpos_i_) = _menhir_stack in
    let _2 = () in
    let _endpos = _endpos_i_ in
    let _v : 'tv_separated_nonempty_list_SEMICOL_operation_BO_ = let x =
      let _endpos = _endpos_i_ in
      let _startpos = _startpos_h_ in
      let _loc = (_startpos, _endpos) in
      
# 292 "parser.mly"
    ( mkloc _loc @@ {h;i} )
# 10605 "parser.ml"
      
    in
    
# 241 "<standard.mly>"
    ( [ x ] )
# 10611 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_SEMICOL_operation_BO_ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    match _menhir_s with
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv645 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) = _v in
        (_menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv646)
    | MenhirState351 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) = _v in
        (_menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv648)
    | MenhirState450 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv649 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) = _v in
        (_menhir_reduce8 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv650)
    | MenhirState459 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__) = _v in
        (_menhir_reduce9 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v : 'freshtv652)
    | _ ->
        _menhir_fail ()

and _menhir_reduce120 : _menhir_env -> (('ttv_tail * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _startpos__1_), _, (x : 'tv_separated_nonempty_list_COMMA_term_)), _endpos__3_) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _endpos = _endpos__3_ in
    let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ = let x = 
# 200 "<standard.mly>"
    ( x )
# 10658 "parser.ml"
     in
    
# 144 "<standard.mly>"
    ( x )
# 10663 "parser.ml"
     in
    _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_goto_becomes_equal_instruction : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_becomes_equal_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState445 | MenhirState440 | MenhirState434 | MenhirState424 | MenhirState412 | MenhirState311 | MenhirState314 | MenhirState317 | MenhirState327 | MenhirState394 | MenhirState333 | MenhirState386 | MenhirState379 | MenhirState334 | MenhirState337 | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_becomes_equal_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce96 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv642)
    | MenhirState477 | MenhirState480 | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _endpos in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_becomes_equal_instruction) = _v in
        let (_startpos : Lexing.position) = _startpos in
        (_menhir_reduce96 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _v _startpos : 'freshtv644)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_instruction -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    match _menhir_s with
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv591 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv589 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState346 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv590)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState346
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState346)) : 'freshtv592)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv593 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce86 _menhir_env (Obj.magic _menhir_stack) : 'freshtv594)
    | MenhirState334 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv597 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState374
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv595 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState374 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv596)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState374
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState374)) : 'freshtv598)
    | MenhirState333 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv599 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState376
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | OR ->
              _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState376
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState376
          | ELSE | END ->
              _menhir_reduce113 _menhir_env (Obj.magic _menhir_stack) MenhirState376
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState376)) : 'freshtv600)
    | MenhirState379 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv601 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState380
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | OR ->
              _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState380
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState380
          | ELSE | END ->
              _menhir_reduce113 _menhir_env (Obj.magic _menhir_stack) MenhirState380
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState380)) : 'freshtv602)
    | MenhirState386 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState387
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState387
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv603 * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              ((let ((_menhir_stack, _menhir_s), _endpos_x_, _, (x : 'tv_instruction), _startpos_x_) = _menhir_stack in
              let _1 = () in
              let _v : 'tv_option_preceded_ELSE_instruction__ = let x = 
# 183 "<standard.mly>"
    ( x )
# 10793 "parser.ml"
               in
              
# 116 "<standard.mly>"
    ( Some x )
# 10798 "parser.ml"
               in
              _menhir_goto_option_preceded_ELSE_instruction__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv604)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState387)) : 'freshtv606)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv607 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState391
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ELSIF ->
              _menhir_run392 _menhir_env (Obj.magic _menhir_stack) MenhirState391
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState391
          | ELSE | END ->
              _menhir_reduce111 _menhir_env (Obj.magic _menhir_stack) MenhirState391
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState391)) : 'freshtv608)
    | MenhirState394 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv609 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState395
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ELSIF ->
              _menhir_run392 _menhir_env (Obj.magic _menhir_stack) MenhirState395
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState395
          | ELSE | END ->
              _menhir_reduce111 _menhir_env (Obj.magic _menhir_stack) MenhirState395
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState395)) : 'freshtv610)
    | MenhirState317 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv613 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState400
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv611 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState400 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv612)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState400
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState400)) : 'freshtv614)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv615 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState402
          | VARIANT ->
              _menhir_run403 _menhir_env (Obj.magic _menhir_stack) MenhirState402
          | END ->
              _menhir_reduce123 _menhir_env (Obj.magic _menhir_stack) MenhirState402
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState402)) : 'freshtv616)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv617 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState407
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState407
          | VARIANT ->
              _menhir_run403 _menhir_env (Obj.magic _menhir_stack) MenhirState407
          | END ->
              _menhir_reduce123 _menhir_env (Obj.magic _menhir_stack) MenhirState407
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState407)) : 'freshtv618)
    | MenhirState412 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv621 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState413
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv619 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState413 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce94 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv620)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState413
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState413)) : 'freshtv622)
    | MenhirState424 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv623 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState425
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | ELSIF ->
              _menhir_run392 _menhir_env (Obj.magic _menhir_stack) MenhirState425
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState425
          | ELSE | END ->
              _menhir_reduce111 _menhir_env (Obj.magic _menhir_stack) MenhirState425
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState425)) : 'freshtv624)
    | MenhirState434 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv625 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState435
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | OR ->
              _menhir_run377 _menhir_env (Obj.magic _menhir_stack) MenhirState435
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState435
          | ELSE | END ->
              _menhir_reduce113 _menhir_env (Obj.magic _menhir_stack) MenhirState435
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState435)) : 'freshtv626)
    | MenhirState440 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv629 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState441
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv627 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState441 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce93 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv628)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState441
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState441)) : 'freshtv630)
    | MenhirState445 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv633 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState446
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | END ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ((('freshtv631 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
              let (_menhir_s : _menhir_state) = MenhirState446 in
              ((let _menhir_env = _menhir_discard _menhir_env in
              _menhir_reduce100 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s) : 'freshtv632)
          | SEMICOL ->
              _menhir_run347 _menhir_env (Obj.magic _menhir_stack) MenhirState446
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState446)) : 'freshtv634)
    | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv637 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState479
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | SEMICOL ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv635 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
              let (_menhir_s : _menhir_state) = MenhirState479 in
              ((let _menhir_stack = (_menhir_stack, _menhir_s) in
              let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | ASSERT ->
                  _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | BEGIN ->
                  _menhir_run440 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | CASE ->
                  _menhir_run429 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IDENT _v ->
                  _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState480 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | IF ->
                  _menhir_run422 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | ILL_TYPED ->
                  _menhir_run420 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_INT ->
                  _menhir_run418 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | PRINT_TYPE ->
                  _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | Skip ->
                  _menhir_run415 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | VAR ->
                  _menhir_run410 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | WHILE ->
                  _menhir_run309 _menhir_env (Obj.magic _menhir_stack) MenhirState480 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState480) : 'freshtv636)
          | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | VALUES ->
              _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState479)) : 'freshtv638)
    | MenhirState480 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce86 _menhir_env (Obj.magic _menhir_stack) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_goto_clause_implementation : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause_implementation -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv587 * _menhir_state * 'tv_clause_implementation) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState497
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | CONCRETE_CONSTANTS ->
          _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONCRETE_VARIABLES ->
          _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | CONSTANTS ->
          _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | EXTENDS ->
          _menhir_run485 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | IMPORTS ->
          _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | INITIALISATION ->
          _menhir_run477 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | LOCAL_OPERATIONS ->
          _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | OPERATIONS ->
          _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | PROMOTES ->
          _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SEES ->
          _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | SETS ->
          _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | VALUES ->
          _menhir_run220 _menhir_env (Obj.magic _menhir_stack) MenhirState497 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
      | END ->
          _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack) MenhirState497
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState497)) : 'freshtv588)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_header_operation : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_header_operation -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv585 * _menhir_state * 'tv_header_operation * Lexing.position) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_header_operation * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSERT ->
            _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BEGIN ->
            _menhir_run440 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CASE ->
            _menhir_run429 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState308 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | IF ->
            _menhir_run422 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ILL_TYPED ->
            _menhir_run420 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PRINT_INT ->
            _menhir_run418 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | PRINT_TYPE ->
            _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | Skip ->
            _menhir_run415 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | VAR ->
            _menhir_run410 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | WHILE ->
            _menhir_run309 _menhir_env (Obj.magic _menhir_stack) MenhirState308 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState308) : 'freshtv582)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv583 * _menhir_state * 'tv_header_operation * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv584)) : 'freshtv586)

and _menhir_reduce107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_clause_implementation_ = 
# 211 "<standard.mly>"
    ( [] )
# 11151 "parser.ml"
     in
    _menhir_goto_list_clause_implementation_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run220 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run221 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState220 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState220

and _menhir_run298 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState298 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState298

and _menhir_run475 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run299 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState475 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState475

and _menhir_run477 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSERT ->
        _menhir_run443 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BEGIN ->
        _menhir_run440 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CASE ->
        _menhir_run429 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState477 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | IF ->
        _menhir_run422 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ILL_TYPED ->
        _menhir_run420 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_INT ->
        _menhir_run418 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | PRINT_TYPE ->
        _menhir_run416 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | Skip ->
        _menhir_run415 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | VAR ->
        _menhir_run410 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | WHILE ->
        _menhir_run309 _menhir_env (Obj.magic _menhir_stack) MenhirState477 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState477

and _menhir_run483 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState483 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState483

and _menhir_run485 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState485 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState485

and _menhir_error216 : _menhir_env -> (('ttv_tail * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 11256 "parser.ml"
) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_clause_abstract_machine_ = 
# 211 "<standard.mly>"
    ( [] )
# 11267 "parser.ml"
     in
    _menhir_goto_list_clause_abstract_machine_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState199 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState199

and _menhir_reduce109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_clause_refinement_ = 
# 211 "<standard.mly>"
    ( [] )
# 11289 "parser.ml"
     in
    _menhir_goto_list_clause_refinement_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState15 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState25 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState34 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run169 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState169 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169

and _menhir_run171 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171

and _menhir_run176 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState176 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176

and _menhir_run178 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run172 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState178 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState178

and _menhir_error11 : _menhir_env -> (('ttv_tail * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 11400 "parser.ml"
) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce135 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11409 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 11415 "parser.ml"
    )), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 11422 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run7 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11429 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState7 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_goto_component_eof : _menhir_env -> 'ttv_tail -> (
# 43 "parser.mly"
       (Ast.component)
# 11445 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
    let (_v : (
# 43 "parser.mly"
       (Ast.component)
# 11453 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
    let ((_1 : (
# 43 "parser.mly"
       (Ast.component)
# 11460 "parser.ml"
    )) : (
# 43 "parser.mly"
       (Ast.component)
# 11464 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv578)) : 'freshtv580)

and _menhir_goto_refinement : _menhir_env -> 'ttv_tail -> 'tv_refinement -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
    let (_v : 'tv_refinement) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
    let ((c : 'tv_refinement) : 'tv_refinement) = _v in
    ((let _v : 'tv_component = 
# 117 "parser.mly"
                                                                (c)
# 11479 "parser.ml"
     in
    _menhir_goto_component _menhir_env _menhir_stack _v) : 'freshtv574)) : 'freshtv576)

and _menhir_error16 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11486 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce161 _menhir_env (Obj.magic _menhir_stack)

and _menhir_error21 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_set -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce157 _menhir_env (Obj.magic _menhir_stack)

and _menhir_error26 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11498 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce151 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce141 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_ident_ren), _startpos_x_) = _menhir_stack in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos_x_ in
    let _v : 'tv_separated_nonempty_list_COMMA_ident_ren_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 11511 "parser.ml"
     in
    _menhir_goto_separated_nonempty_list_COMMA_ident_ren_ _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error38 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce117 _menhir_env (Obj.magic _menhir_stack)

and _menhir_error166 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce145 _menhir_env (Obj.magic _menhir_stack)

and _menhir_error172 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11526 "parser.ml"
) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce50 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, _startpos__1_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_clause_refinement = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 181 "parser.mly"
            ( syntax_error (make_position _loc))
# 11541 "parser.ml"
     in
    _menhir_goto_clause_refinement _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_abstract_machine : _menhir_env -> 'ttv_tail -> 'tv_abstract_machine -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv571) = Obj.magic _menhir_stack in
    let (_v : 'tv_abstract_machine) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv569) = Obj.magic _menhir_stack in
    let ((c : 'tv_abstract_machine) : 'tv_abstract_machine) = _v in
    ((let _v : 'tv_component = 
# 117 "parser.mly"
                                                                (c)
# 11556 "parser.ml"
     in
    _menhir_goto_component _menhir_env _menhir_stack _v) : 'freshtv570)) : 'freshtv572)

and _menhir_reduce19 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, _startpos__1_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_clause_abstract_machine = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 138 "parser.mly"
            ( syntax_error (make_position _loc))
# 11570 "parser.ml"
     in
    _menhir_goto_clause_abstract_machine _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_implementation : _menhir_env -> 'ttv_tail -> 'tv_implementation -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
    let (_v : 'tv_implementation) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
    let ((c : 'tv_implementation) : 'tv_implementation) = _v in
    ((let _v : 'tv_component = 
# 117 "parser.mly"
                                                                (c)
# 11585 "parser.ml"
     in
    _menhir_goto_component _menhir_env _menhir_stack _v) : 'freshtv566)) : 'freshtv568)

and _menhir_goto_valuation : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> 'tv_valuation -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv563 * Lexing.position * _menhir_state * 'tv_valuation) = Obj.magic _menhir_stack in
    ((if _menhir_env._menhir_error then
      _menhir_error291 _menhir_env (Obj.magic _menhir_stack)
    else
      let _tok = _menhir_env._menhir_token in
      match _tok with
      | SEMICOL ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv561 * Lexing.position * _menhir_state * 'tv_valuation) = Obj.magic _menhir_stack in
          ((let _menhir_env = _menhir_discard _menhir_env in
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | IDENT _v ->
              _menhir_run221 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState292 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | _ ->
              assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState292) : 'freshtv562)
      | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | VALUES ->
          _menhir_reduce159 _menhir_env (Obj.magic _menhir_stack)
      | _ ->
          (assert (not _menhir_env._menhir_error);
          _menhir_env._menhir_error <- true;
          _menhir_error291 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv564)

and _menhir_reduce169 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_term = let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 304 "parser.mly"
                                     ( mkloc _loc @@AppUnOp{op=Uminus;a} )
# 11630 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce132 : _menhir_env -> ('ttv_tail * _menhir_state * 'tv_range * Lexing.position) -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ _startpos__3_ ->
    let (_menhir_stack, _menhir_s, (x : 'tv_range), _startpos_x_) = _menhir_stack in
    let _3 = () in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_ranges = let _endpos = _endpos__3_ in
    let _startpos = _startpos_x_ in
    let _loc = (_startpos, _endpos) in
    
# 438 "parser.mly"
                       ( syntax_error ~msg:"" (make_position _loc))
# 11647 "parser.ml"
     in
    _menhir_goto_ranges _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_run86 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv559 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
    let (_endpos__2_ : Lexing.position) = _endpos in
    let (_ : _menhir_state) = _menhir_s in
    let (_startpos__2_ : Lexing.position) = _startpos in
    ((let (_menhir_stack, _endpos_x_, _menhir_s, (x : 'tv_ident_ren), _startpos_x_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_x_ in
    let _v : 'tv_range = 
# 442 "parser.mly"
                        (failwith "il faut parenthéser l'identificateur alias d'intervalle")
# 11665 "parser.ml"
     in
    _menhir_goto_range _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv560)

and _menhir_reduce181 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 11672 "parser.ml"
) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _endpos_x_, _menhir_s, (x : (
# 38 "parser.mly"
       (Ast.ident)
# 11678 "parser.ml"
    )), _startpos_x_), _endpos_t_, _, (t : 'tv_term), _startpos_t_) = _menhir_stack in
    let _2 = () in
    let _endpos = _endpos_t_ in
    let _v : 'tv_valuation = 
# 251 "parser.mly"
                        ( (x,TermValue t) )
# 11685 "parser.ml"
     in
    _menhir_goto_valuation _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce175 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 310 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Pow;a1;a2} )
# 11701 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce172 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 307 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Mul;a1;a2} )
# 11717 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce173 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 308 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Div;a1;a2} )
# 11733 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce170 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 305 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Add;a1;a2} )
# 11749 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce174 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 309 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Mod;a1;a2} )
# 11765 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce171 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_a1_, _menhir_s, (a1 : 'tv_term), _startpos_a1_), _, _startpos__2_), _endpos_a2_, _, (a2 : 'tv_term), _startpos_a2_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_a1_ in
    let _endpos = _endpos_a2_ in
    let _v : 'tv_term = let _endpos = _endpos_a2_ in
    let _startpos = _startpos_a1_ in
    let _loc = (_startpos, _endpos) in
    
# 306 "parser.mly"
                                     ( mkloc _loc @@AppBinOp{op=Sub;a1;a2} )
# 11781 "parser.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce91 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_e1_, _menhir_s, (e1 : 'tv_term), _startpos_e1_), _), _endpos_e2_, _, (e2 : 'tv_term), _startpos_e2_) = _menhir_stack in
    let _2 = () in
    let _endpos = _endpos_e2_ in
    let _v : 'tv_interval_BO = 
# 461 "parser.mly"
    ( Interval (e1,e2) )
# 11793 "parser.ml"
     in
    _menhir_goto_interval_BO _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_error291 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * 'tv_valuation -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce159 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce103 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 374 "parser.mly"
                                     (mkloc _loc @@ Print_type{a})
# 11813 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce102 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 373 "parser.mly"
                                     (mkloc _loc @@ Print_int{a})
# 11829 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce104 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _1 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_level1_instruction = let _endpos = _endpos_a_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 375 "parser.mly"
                                     (mkloc _loc @@ Ill_typed{a})
# 11845 "parser.ml"
     in
    _menhir_goto_level1_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error455 : _menhir_env -> (('ttv_tail * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce155 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce119 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_, _endpos) = Obj.magic _menhir_stack in
    let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ = 
# 142 "<standard.mly>"
    ( [] )
# 11859 "parser.ml"
     in
    _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_term__RPAREN__ _menhir_env _menhir_stack _endpos _menhir_s _v

and _menhir_reduce7 : _menhir_env -> (((('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((((_menhir_stack, _endpos_xr_, _menhir_s, (xr : 'tv_ident_ren), _startpos_xr_), _), _, (xs : 'tv_separated_nonempty_list_QUOTE_IDENT_)), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _4 = () in
    let _2 = () in
    let _startpos = _startpos_xr_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_becomes_equal_instruction = let _endpos = _endpos_a_ in
    let _startpos = _startpos_xr_ in
    let _loc = (_startpos, _endpos) in
    
# 387 "parser.mly"
        ( mkloc _loc @@ Record_assign{xr;xs;a} )
# 11876 "parser.ml"
     in
    _menhir_goto_becomes_equal_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_error466 : _menhir_env -> ((('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    _menhir_reduce120 _menhir_env (Obj.magic _menhir_stack)

and _menhir_reduce6 : _menhir_env -> ((((('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((((_menhir_stack, _endpos_xr_, _menhir_s, (xr : 'tv_ident_ren), _startpos_xr_), _, _startpos__1_), _, (x : 'tv_separated_nonempty_list_COMMA_term_)), _endpos__3_inlined1_), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _3 = () in
    let _3_inlined1 = () in
    let _1 = () in
    let _startpos = _startpos_xr_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_becomes_equal_instruction = let idxs =
      let _3 = _3_inlined1 in
      let y = 
# 200 "<standard.mly>"
    ( x )
# 11897 "parser.ml"
       in
      
# 109 "parser.mly"
                                ( y )
# 11902 "parser.ml"
      
    in
    let _endpos = _endpos_a_ in
    let _startpos = _startpos_xr_ in
    let _loc = (_startpos, _endpos) in
    
# 385 "parser.mly"
        ( mkloc _loc @@ Array_assign{xr;idxs;a} )
# 11911 "parser.ml"
     in
    _menhir_goto_becomes_equal_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce5 : _menhir_env -> (('ttv_tail * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _endpos_xr_, _menhir_s, (xr : 'tv_ident_ren), _startpos_xr_), _), _endpos_a_, _, (a : 'tv_term), _startpos_a_) = _menhir_stack in
    let _2 = () in
    let _startpos = _startpos_xr_ in
    let _endpos = _endpos_a_ in
    let _v : 'tv_becomes_equal_instruction = let _endpos = _endpos_a_ in
    let _startpos = _startpos_xr_ in
    let _loc = (_startpos, _endpos) in
    
# 382 "parser.mly"
        ( mkloc _loc @@ Assign{xr;a} )
# 11927 "parser.ml"
     in
    _menhir_goto_becomes_equal_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce39 : _menhir_env -> ('ttv_tail * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let ((_menhir_stack, _menhir_s, _startpos__1_), _endpos_i_, _, (i : 'tv_instruction), _startpos_i_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_clause_initialisation_BO = let _endpos = _endpos_i_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 265 "parser.mly"
    ( Some (mkloc _loc @@ InitialisationB0{i}) )
# 11941 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv557) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_clause_initialisation_BO) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv555) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_clause_initialisation_BO) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv553) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : 'tv_clause_initialisation_BO) : 'tv_clause_initialisation_BO) = _v in
    ((let _v : 'tv_clause_implementation = 
# 168 "parser.mly"
    ( c )
# 11958 "parser.ml"
     in
    _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v) : 'freshtv554)) : 'freshtv556)) : 'freshtv558)

and _menhir_reduce87 : _menhir_env -> ('ttv_tail * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state -> Lexing.position -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos__3_ _ _startpos__3_ ->
    let ((_menhir_stack, _endpos__1_, _menhir_s, (_1 : 'tv_instruction), _startpos__1_), _) = _menhir_stack in
    let _3 = () in
    let _2 = () in
    let _startpos = _startpos__1_ in
    let _endpos = _endpos__3_ in
    let _v : 'tv_instruction = let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 354 "parser.mly"
    ( syntax_error (make_position _loc) )
# 11975 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _endpos _menhir_s _v _startpos

and _menhir_reduce36 : _menhir_env -> 'ttv_tail * Lexing.position * _menhir_state * Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _endpos__1_, _menhir_s, _startpos__1_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_clause_implementation = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    let _loc = (_startpos, _endpos) in
    
# 169 "parser.mly"
            ( syntax_error (make_position _loc))
# 11989 "parser.ml"
     in
    _menhir_goto_clause_implementation _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12002 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error11 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | REFINES ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv531 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12014 "parser.ml"
              ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv527 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12024 "parser.ml"
                  ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 12030 "parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONCRETE_CONSTANTS ->
                      _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | CONCRETE_VARIABLES ->
                      _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | CONSTANTS ->
                      _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | EXTENDS ->
                      _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | INCLUDES ->
                      _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | PROMOTES ->
                      _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | SEES ->
                      _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | SETS ->
                      _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | END ->
                      _menhir_reduce109 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv528)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv529 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12066 "parser.ml"
                  ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv530)) : 'freshtv532)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error11 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv534)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12079 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | CONCRETE_CONSTANTS ->
              _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | CONCRETE_VARIABLES ->
              _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | CONSTANTS ->
              _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | EXTENDS ->
              _menhir_run169 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | INCLUDES ->
              _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | PROMOTES ->
              _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | SEES ->
              _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | SETS ->
              _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | USES ->
              _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
          | END ->
              _menhir_reduce105 _menhir_env (Obj.magic _menhir_stack) MenhirState197
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197)) : 'freshtv536)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv543 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12115 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((if _menhir_env._menhir_error then
          _menhir_error216 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          match _tok with
          | REFINES ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : (('freshtv541 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12127 "parser.ml"
              ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
              ((let _menhir_env = _menhir_discard _menhir_env in
              let _tok = _menhir_env._menhir_token in
              match _tok with
              | IDENT _v ->
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv537 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12137 "parser.ml"
                  ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = Obj.magic _menhir_stack in
                  let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
                  let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 12143 "parser.ml"
                  )) = _v in
                  let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                  ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
                  let _menhir_env = _menhir_discard _menhir_env in
                  let _tok = _menhir_env._menhir_token in
                  match _tok with
                  | CONCRETE_CONSTANTS ->
                      _menhir_run178 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | CONCRETE_VARIABLES ->
                      _menhir_run176 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | CONSTANTS ->
                      _menhir_run171 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | EXTENDS ->
                      _menhir_run485 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | IMPORTS ->
                      _menhir_run483 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | INITIALISATION ->
                      _menhir_run477 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | LOCAL_OPERATIONS ->
                      _menhir_run475 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | OPERATIONS ->
                      _menhir_run298 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | PROMOTES ->
                      _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | SEES ->
                      _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | SETS ->
                      _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | VALUES ->
                      _menhir_run220 _menhir_env (Obj.magic _menhir_stack) MenhirState218 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                  | END ->
                      _menhir_reduce107 _menhir_env (Obj.magic _menhir_stack) MenhirState218
                  | _ ->
                      assert (not _menhir_env._menhir_error);
                      _menhir_env._menhir_error <- true;
                      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218) : 'freshtv538)
              | _ ->
                  assert (not _menhir_env._menhir_error);
                  _menhir_env._menhir_error <- true;
                  let (_menhir_env : _menhir_env) = _menhir_env in
                  let (_menhir_stack : ((('freshtv539 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 12187 "parser.ml"
                  ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = Obj.magic _menhir_stack in
                  ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                  _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
          | _ ->
              (assert (not _menhir_env._menhir_error);
              _menhir_env._menhir_error <- true;
              _menhir_error216 _menhir_env (Obj.magic _menhir_stack))) : 'freshtv544)
    | MenhirState303 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv547 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv545 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _endpos_os_, _menhir_s, (os : 'tv_separated_nonempty_list_COMMA_IDENT_), _startpos_os_), _endpos_px_, _, (px : 'tv_ident_ren), _startpos_px_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = _menhir_stack in
        let _2 = () in
        let _startpos = _startpos_os_ in
        let _v : 'tv_header_operation = let args = 
# 105 "parser.mly"
                                                                             ( xs )
# 12206 "parser.ml"
         in
        let opt1 = 
# 279 "parser.mly"
                                                           (Some os)
# 12211 "parser.ml"
         in
        
# 271 "parser.mly"
  ( let ret = none_is_empty_list opt1 in

    let ret = List.map mk_annot ret in
    let args = List.map mk_annot args in
    {return=ret;name=px;args=args} )
# 12220 "parser.ml"
         in
        _menhir_goto_header_operation _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv546)) : 'freshtv548)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv551 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _endpos_px_, _menhir_s, (px : 'tv_ident_ren), _startpos_px_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) = _menhir_stack in
        let _startpos = _startpos_px_ in
        let _v : 'tv_header_operation = let args = 
# 105 "parser.mly"
                                                                             ( xs )
# 12233 "parser.ml"
         in
        let opt1 = 
# 278 "parser.mly"
    ( None )
# 12238 "parser.ml"
         in
        
# 271 "parser.mly"
  ( let ret = none_is_empty_list opt1 in

    let ret = List.map mk_annot ret in
    let args = List.map mk_annot args in
    {return=ret;name=px;args=args} )
# 12247 "parser.ml"
         in
        _menhir_goto_header_operation _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv550)) : 'freshtv552)
    | _ ->
        _menhir_fail ()

and _menhir_run6 : _menhir_env -> 'ttv_tail -> Lexing.position -> _menhir_state -> (
# 38 "parser.mly"
       (Ast.ident)
# 12256 "parser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _endpos _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack)
    | IN | LT_MINUS_MINUS | RCURLY | RPAREN ->
        _menhir_reduce135 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv525 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 12274 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)

and _menhir_error0 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv523) = Obj.magic _menhir_stack in
    let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
    let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
    ((let _menhir_stack = (_menhir_stack, _endpos, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv519 * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv517 * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos__2_ : Lexing.position) = _endpos in
        ((let (_menhir_stack, _endpos__1_, _startpos__1_) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 43 "parser.mly"
       (Ast.component)
# 12302 "parser.ml"
        ) = let _endpos = _endpos__2_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 115 "parser.mly"
                ( syntax_error (make_position _loc))
# 12309 "parser.ml"
         in
        _menhir_goto_component_eof _menhir_env _menhir_stack _v) : 'freshtv518)) : 'freshtv520)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * Lexing.position * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _) = _menhir_stack in
        _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv522)) : 'freshtv524)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState497 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * 'tv_clause_implementation) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState497 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv24)) : 'freshtv26)
    | MenhirState485 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState483 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState480 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState480 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos) : 'freshtv32)) : 'freshtv34)
    | MenhirState479 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) : 'freshtv36)
    | MenhirState477 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState475 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState470 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce5 _menhir_env (Obj.magic _menhir_stack) : 'freshtv42)
    | MenhirState469 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState468 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv45 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) : 'freshtv46)
    | MenhirState467 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv47 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) = Obj.magic _menhir_stack in
        (_menhir_error466 _menhir_env (Obj.magic _menhir_stack) : 'freshtv48)
    | MenhirState464 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState463 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv51 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce7 _menhir_env (Obj.magic _menhir_stack) : 'freshtv52)
    | MenhirState462 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv53 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState460 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState459 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState459 : 'freshtv58)
    | MenhirState456 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv59 * _menhir_state * 'tv_header_operation * Lexing.position)) * Lexing.position * _menhir_state * 'tv_level1_instruction * Lexing.position)) = Obj.magic _menhir_stack in
        (_menhir_error455 _menhir_env (Obj.magic _menhir_stack) : 'freshtv60)
    | MenhirState451 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState450 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce119 _menhir_env (Obj.magic _menhir_stack) MenhirState450 : 'freshtv64)
    | MenhirState449 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState446 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv67 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState445 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState443 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState441 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState440 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState436 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv77 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState435 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv79 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState434 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv81 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState432 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState429 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState426 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv87 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState425 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv89 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState424 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState422 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState421 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce104 _menhir_env (Obj.magic _menhir_stack) : 'freshtv96)
    | MenhirState420 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState419 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce102 _menhir_env (Obj.magic _menhir_stack) : 'freshtv100)
    | MenhirState418 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState417 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce103 _menhir_env (Obj.magic _menhir_stack) : 'freshtv104)
    | MenhirState416 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState413 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState412 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState410 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState407 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState404 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState403 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState402 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv119 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState400 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv121 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState397 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv123 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_ELSIF_separated_pair_condition_THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState395 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState394 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState392 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState391 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv131 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState387 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState386 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState385 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv137 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state * 'tv_list_preceded_OR_separated_pair_separated_nonempty_list_COMMA_const_term__THEN_instruction___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState383 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * Lexing.position * _menhir_state * 'tv_const_term * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState380 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv141 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState379 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState377 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState376 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv147 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState374 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState368 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState367 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState366 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState364 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv157 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState363 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv159 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState362 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv161 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) * _menhir_state * 'tv_separated_nonempty_list_COMMA_term_) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState359 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState358 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv165 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState357 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv167 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_QUOTE_IDENT_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState354 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 12683 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState352 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState351 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState347 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState347 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce87 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos) : 'freshtv176)) : 'freshtv178)
    | MenhirState346 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv179 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) * Lexing.position * _menhir_state * 'tv_instruction * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState341 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState340 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv183 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState339 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_ident_ren_ * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState337 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState335 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState334 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState333 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv193 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_const_term_)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState331 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv195 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState328 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState327 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState325 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState324 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)
    | MenhirState323 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)
    | MenhirState322 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv207 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)
    | MenhirState321 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)
    | MenhirState320 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv211 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)
    | MenhirState319 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)
    | MenhirState317 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv215 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)
    | MenhirState315 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv217 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)
    | MenhirState314 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)
    | MenhirState312 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)
    | MenhirState311 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)
    | MenhirState309 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)
    | MenhirState308 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv227 * _menhir_state * 'tv_header_operation * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)
    | MenhirState305 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)
    | MenhirState303 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)
    | MenhirState302 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * Lexing.position * _menhir_state * 'tv_separated_nonempty_list_COMMA_IDENT_ * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv234)
    | MenhirState298 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)
    | MenhirState292 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * Lexing.position * _menhir_state * 'tv_valuation)) = Obj.magic _menhir_stack in
        (_menhir_error291 _menhir_env (Obj.magic _menhir_stack) : 'freshtv238)
    | MenhirState288 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv239 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce91 _menhir_env (Obj.magic _menhir_stack) : 'freshtv240)
    | MenhirState287 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)
    | MenhirState286 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv243 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce171 _menhir_env (Obj.magic _menhir_stack) : 'freshtv244)
    | MenhirState285 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)
    | MenhirState284 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce174 _menhir_env (Obj.magic _menhir_stack) : 'freshtv248)
    | MenhirState283 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv249 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)
    | MenhirState282 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce170 _menhir_env (Obj.magic _menhir_stack) : 'freshtv252)
    | MenhirState281 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)
    | MenhirState280 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce173 _menhir_env (Obj.magic _menhir_stack) : 'freshtv256)
    | MenhirState279 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)
    | MenhirState278 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv259 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce172 _menhir_env (Obj.magic _menhir_stack) : 'freshtv260)
    | MenhirState277 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)
    | MenhirState276 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv263 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce175 _menhir_env (Obj.magic _menhir_stack) : 'freshtv264)
    | MenhirState275 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)
    | MenhirState274 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv267 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 12924 "parser.ml"
        ) * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce181 _menhir_env (Obj.magic _menhir_stack) : 'freshtv268)
    | MenhirState268 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)
    | MenhirState267 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState267 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv272)
    | MenhirState264 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv273 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)
    | MenhirState263 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)
    | MenhirState261 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState261 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce132 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos) : 'freshtv278)) : 'freshtv280)
    | MenhirState255 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce169 _menhir_env (Obj.magic _menhir_stack) : 'freshtv282)
    | MenhirState252 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)
    | MenhirState247 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)
    | MenhirState245 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)
    | MenhirState244 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)
    | MenhirState241 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)
    | MenhirState236 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv293 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)
    | MenhirState235 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)
    | MenhirState227 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv299 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)
    | MenhirState226 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv301 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)
    | MenhirState222 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13015 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv305 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13021 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState222 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv303 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13031 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos__3_ : Lexing.position) = _endpos in
        let (_ : _menhir_state) = _menhir_s in
        let (_startpos__3_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _endpos__1_, _menhir_s, (_1 : (
# 38 "parser.mly"
       (Ast.ident)
# 13039 "parser.ml"
        )), _startpos__1_) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _endpos = _endpos__3_ in
        let _v : 'tv_valuation = let _endpos = _endpos__3_ in
        let _startpos = _startpos__1_ in
        let _loc = (_startpos, _endpos) in
        
# 255 "parser.mly"
                     ( syntax_error ~msg:"" (make_position _loc))
# 13050 "parser.ml"
         in
        _menhir_goto_valuation _menhir_env _menhir_stack _endpos _menhir_s _v) : 'freshtv304)) : 'freshtv306)) : 'freshtv308)
    | MenhirState220 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv317 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13063 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13067 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv315 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13073 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13077 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState218 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv311 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13091 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13095 "parser.ml"
            ) * Lexing.position) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _startpos__1_), _endpos__2_, (_2 : (
# 38 "parser.mly"
       (Ast.ident)
# 13100 "parser.ml"
            )), _startpos__2_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _endpos__5_, (_5 : (
# 38 "parser.mly"
       (Ast.ident)
# 13104 "parser.ml"
            )), _startpos__5_), _endpos__6_, _, _startpos__6_) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_implementation = let _3 = 
# 105 "parser.mly"
                                                                             ( xs )
# 13112 "parser.ml"
             in
            let _endpos = _endpos__6_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 154 "parser.mly"
    ( syntax_error (make_position _loc))
# 13120 "parser.ml"
             in
            _menhir_goto_implementation _menhir_env _menhir_stack _v) : 'freshtv312)
        | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | IMPORTS | INITIALISATION | LOCAL_OPERATIONS | OPERATIONS | PROMOTES | SEES | SETS | VALUES ->
            _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv313 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13132 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13136 "parser.ml"
            ) * Lexing.position) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            (_menhir_reduce36 _menhir_env (Obj.magic _menhir_stack) : 'freshtv314)) : 'freshtv316)) : 'freshtv318)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13144 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _), _, _, _) = _menhir_stack in
        _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv320)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_clause_abstract_machine) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState211 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv322)) : 'freshtv324)
    | MenhirState199 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv333 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13169 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13175 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState197 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | INCLUDES | PROMOTES | SEES | SETS | USES ->
            _menhir_reduce19 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv327 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13191 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _startpos__1_), _endpos__2_, (_2 : (
# 38 "parser.mly"
       (Ast.ident)
# 13196 "parser.ml"
            )), _startpos__2_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _endpos__4_, _, _startpos__4_) = _menhir_stack in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_abstract_machine = let _3 = 
# 105 "parser.mly"
                                                                             ( xs )
# 13203 "parser.ml"
             in
            let _endpos = _endpos__4_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 126 "parser.mly"
    ( syntax_error (make_position _loc))
# 13211 "parser.ml"
             in
            _menhir_goto_abstract_machine _menhir_env _menhir_stack _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv329 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13221 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            (_menhir_reduce19 _menhir_env (Obj.magic _menhir_stack) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)
    | MenhirState193 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13234 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState193 : 'freshtv338)
    | MenhirState184 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * 'tv_clause_refinement) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState184 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv340)) : 'freshtv342)
    | MenhirState178 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)
    | MenhirState173 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13263 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        (_menhir_error172 _menhir_env (Obj.magic _menhir_stack) : 'freshtv348)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * Lexing.position * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_instantiation_BO__RPAREN__)) = Obj.magic _menhir_stack in
        (_menhir_error166 _menhir_env (Obj.magic _menhir_stack) : 'freshtv354)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * 'tv_instantiation_BO)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)
    | MenhirState160 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)
    | MenhirState158 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)
    | MenhirState156 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363 * _menhir_state * 'tv_option_terminated_IDENT_COL__) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state * Lexing.position) * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv367 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * 'tv_array_ext_body)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv375 * Lexing.position * _menhir_state * 'tv_simple_term * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv377 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv381 * Lexing.position * _menhir_state * 'tv_condition * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv382)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv388)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv391 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv395 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv399 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv400)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv404)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv406)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState114 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv408)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv409 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state * 'tv_range * Lexing.position)) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState108 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv414)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv415 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv421 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv425 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv427 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv429 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv430)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv431 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv433 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv435 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv439 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv441 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_run86 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState85 _menhir_env._menhir_lexbuf.Lexing.lex_start_p : 'freshtv442)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv445 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state * 'tv_range * Lexing.position)) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState79 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce132 _menhir_env (Obj.magic _menhir_stack) _endpos _menhir_s _startpos) : 'freshtv452)) : 'freshtv454)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv457 * Lexing.position * _menhir_state * 'tv_term * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv459 * _menhir_state * Lexing.position) * Lexing.position * _menhir_state * 'tv_term * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv463 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv465 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv467 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13562 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_option_terminated_IDENT_COL__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv479 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv481 * _menhir_state * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _) = _menhir_stack in
        _menhir_error38 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv484)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv488)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv491 * Lexing.position * _menhir_state * 'tv_ident_ren * Lexing.position) = Obj.magic _menhir_stack in
        (_menhir_reduce141 _menhir_env (Obj.magic _menhir_stack) : 'freshtv492)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv493 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13630 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        (_menhir_error26 _menhir_env (Obj.magic _menhir_stack) : 'freshtv494)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * Lexing.position * _menhir_state * 'tv_set)) = Obj.magic _menhir_stack in
        (_menhir_error21 _menhir_env (Obj.magic _menhir_stack) : 'freshtv498)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13647 "parser.ml"
        ) * Lexing.position)) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _) = _menhir_stack in
        _menhir_error16 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv500)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv501 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv509 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13661 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13665 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv507 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13671 "parser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13675 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
        let (_menhir_s : _menhir_state) = MenhirState13 in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _endpos, _menhir_s, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv503 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13689 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13693 "parser.ml"
            ) * Lexing.position) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _startpos__1_), _endpos__2_, (_2 : (
# 38 "parser.mly"
       (Ast.ident)
# 13698 "parser.ml"
            )), _startpos__2_), _, (xs : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)), _endpos__5_, (_5 : (
# 38 "parser.mly"
       (Ast.ident)
# 13702 "parser.ml"
            )), _startpos__5_), _endpos__6_, _, _startpos__6_) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _1 = () in
            let _v : 'tv_refinement = let _3 = 
# 105 "parser.mly"
                                                                             ( xs )
# 13710 "parser.ml"
             in
            let _endpos = _endpos__6_ in
            let _startpos = _startpos__1_ in
            let _loc = (_startpos, _endpos) in
            
# 146 "parser.mly"
      ( syntax_error (make_position _loc))
# 13718 "parser.ml"
             in
            _menhir_goto_refinement _menhir_env _menhir_stack _v) : 'freshtv504)
        | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | INCLUDES | PROMOTES | SEES | SETS ->
            _menhir_reduce50 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv505 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13730 "parser.ml"
            ) * Lexing.position) * _menhir_state * 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__)) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13734 "parser.ml"
            ) * Lexing.position) * Lexing.position * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
            (_menhir_reduce50 _menhir_env (Obj.magic _menhir_stack) : 'freshtv506)) : 'freshtv508)) : 'freshtv510)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv511 * Lexing.position * _menhir_state * (
# 38 "parser.mly"
       (Ast.ident)
# 13742 "parser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv513 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * Lexing.position) * Lexing.position * (
# 38 "parser.mly"
       (Ast.ident)
# 13756 "parser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _), _, _, _) = _menhir_stack in
        _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv516)

and _menhir_reduce115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ = 
# 142 "<standard.mly>"
    ( [] )
# 13766 "parser.ml"
     in
    _menhir_goto_loption_delimited_LPAREN_separated_nonempty_list_COMMA_IDENT__RPAREN__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState5 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and component_eof : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 43 "parser.mly"
       (Ast.component)
# 13798 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IMPLEMENTATION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv1 * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 13832 "parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REFINES ->
                _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState215
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState215) : 'freshtv2)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv3 * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _) = _menhir_stack in
            _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv4)) : 'freshtv6)
    | MACHINE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9 * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 13869 "parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState193 in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) _menhir_env._menhir_lexbuf.Lexing.lex_curr_p MenhirState194 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194) : 'freshtv8)
            | CONCRETE_CONSTANTS | CONCRETE_VARIABLES | CONSTANTS | END | EXTENDS | INCLUDES | PROMOTES | SEES | SETS | USES ->
                _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState193
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState193) : 'freshtv10)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11 * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _) = _menhir_stack in
            _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv12)) : 'freshtv14)
    | REFINEMENT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv15 * Lexing.position) = Obj.magic _menhir_stack in
            let (_endpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_curr_p in
            let (_v : (
# 38 "parser.mly"
       (Ast.ident)
# 13919 "parser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _endpos, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | REFINES ->
                _menhir_reduce115 _menhir_env (Obj.magic _menhir_stack) MenhirState4
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv16)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17 * Lexing.position) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _) = _menhir_stack in
            _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv18)) : 'freshtv20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_error0 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv22))

# 269 "<standard.mly>"
  

# 13949 "parser.ml"
