(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* gestion des erreurs de traduction *)


open Printf
open Lexing

let current_file_name = ref ""

type pos = {start_pos:Lexing.position;
            end_pos:Lexing.position;
            file_name:string}

let make_position (start_pos,end_pos) = 
  let file_name = !current_file_name in
  {start_pos;end_pos;file_name}

let default_position =
  make_position (Lexing.dummy_pos,Lexing.dummy_pos)

exception Parse_Exception of (string  * pos)


let string_of_position {start_pos={pos_lnum=l1;pos_cnum=c1};
                        end_pos={pos_lnum=l2;pos_cnum=c2};file_name} =
  if l1 = l2
  then
    sprintf "File %s, line %d, characters %d-%d"
      !current_file_name l1 c1 c2
  else
    sprintf "File %s, form line %d, characters %d, to line %d characters %d"
      !current_file_name l1 c1 l2 c2


let pos () = 
  make_position (Parsing.symbol_start_pos (),Parsing.symbol_end_pos ())

let error_exit pos msg =
  Printf.printf "Error (%s): \n%s\n" (string_of_position pos) msg; 
  flush_all ();exit 1

let warning pos msg =
  Printf.printf "%s\nwarning:\n%s\n\n" (string_of_position pos) msg

let syntax_error ?(msg="") pos =
  error_exit pos ("Syntax error " ^ msg)
