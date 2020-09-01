

let name_collision = function
| "and" | "as" | "assert" | "asr" | "begin" | "class" | "constraint" | "do" 
| "done" | "downto" | "else" | "end" | "exception" |"external" | "false" 
| "for" | "fun" | "function" | "functor" | "if" | "in" | "include" |"inherit"
|"initializer" | "land" | "lazy" | "let" | "lor" | "lsl" | "lsr" | "lxor" 
| "match" | "method" | "mod" | "module" | "mutable" | "new" | "nonrec" 
| "object" | "of" | "open" | "or" | "private" | "rec" | "sig" | "struct" 
| "then" | "to" | "true" | "try" | "type" | "val" | "virtual" | "when"
| "while" | "with" 

(* Camlp4 *)
| "parser" | "value"

(* stdlib *)
| "raise" | "raise_notrace" | "invalid_arg" | "failwith" | "Exit" 
| "match_failure" | "Assert_failure" | "Invalid_argument" | "Failure" 
| "Not_found" | "Out_of_memory" | "Stack_overflow" | "Sys_error" 
|  "End_of_file" | "Division_by_zero" | "Sys_blocked_io"
| "Undefined_recursive_module" | "compare" | "min" | "max" | "not" 
(* | "or" *) | "__LOC__" | "__FILE__" | "__LINE__" | "__MODULE__" | "__POS__" 
|  "__FUNCTION__" | "__LOC_OF__" | "__LINE_OF__" | "__POS_OF__" | "succ" 
|  "pred" (* | "mod" *) | "abs" | "max_int" | "min_int" (* | "land" | "lor" | "lxor"  *)
| "lnot" (* | "lsl" | "lsr" | "asr"*) | "sqrt" | "exp" | "log" | "log10" 
| "expm1" | "log1p" | "cos" | "sin" | "tan" | "acos" | "asin" | "atan" 
|  "atan2" | "hypot" | "cosh" | "sinh" | "tanh" | "ceil" | "floor" 
|  "abs_float" | "copysign" | "mod_float" | "frexp" | "ldexp" | "modf" 
| "float" | "float_of_int" | "truncate" | "int_of_float" | "infinity" 
|  "neg_infinity" | "nan" | "max_float" | "min_float" | "epsilon_float" 
|  "FP_normal" | "FP_subnormal" | "FP_zero" | "FP_infinite" | "FP_nan" 
|  "classify_float" | "int_of_char" | "char_of_int" | "ignore" 
| "string_of_bool" | "bool_of_string_opt" | "bool_of_string" 
| "string_of_int" | "int_of_string_opt" | "int_of_string" 
|  "string_of_float" | "float_of_string_opt" | "float_of_string" 
| "fst" | "snd" | "stdin" | "stdout" | "stderr" | "print_char" 
|  "print_string" | "print_bytes" | "print_int" | "print_float" 
| "print_endline" | "print_newline" | "prerr_char" | "prerr_string" 
| "prerr_bytes" | "prerr_int" | "prerr_float" | "prerr_endline" 
| "prerr_newline" | "read_line" | "read_int_opt" | "read_int" 
| "read_float_opt" | "read_float" | "Open_rdonly" | "Open_wronly" 
|  "Open_append" | "Open_creat" | "Open_trunc" | "Open_excl" 
|  "Open_binary" | "Open_text" | "Open_nonblock" | "open_out" 
| "open_out_bin" | "open_out_gen" | "flush" | "flush_all" 
| "output_char" | "output_string" | "output_bytes" | "output" 
| "output_substring" | "output_byte" | "output_binary_int" 
| "output_value" | "seek_out" | "pos_out" | "out_channel_length" 
| "close_out" | "close_out_noerr" | "set_binary_mode_out" | "open_in" 
| "open_in_bin" | "open_in_gen" | "input_char" | "input_line" | "input" 
| "really_input" | "really_input_string" | "input_byte" | "input_binary_int" 
| "input_value" | "seek_in" | "pos_in" | "in_channel_length" | "close_in" 
| "close_in_noerr" | "set_binary_mode_in" | "LargeFile" | "ref" | "incr" 
| "decr" | "Ok" | "Error" | "string_of_format" | "format_of_string" | "exit" 
|  "at_exit" | "valid_float_lexem" | "unsafe_really_input" | "do_at_exit" 
|  "Arg" | "Array" | "ArrayLabels" | "Atomic" | "Bigarray" | "Bool" | "Buffer" 
| "Bytes" | "BytesLabels" | "Callback" | "Char" | "Complex" | "Digest" 
|  "Ephemeron" | "Filename" | "Float" | "Format" | "Fun" | "Gc" | "Genlex" 
|  "Hashtbl" | "Int" | "Int32" | "Int64" | "Lazy" | "Lexing" | "List" 
|  "ListLabels" | "Map" | "Marshal" | "MoreLabels" | "Nativeint" | "Obj" 
| "Oo" | "Option" | "Parsing" | "Pervasives" | "Printexc" | "Printf" 
|  "Queue" | "Random" | "Result" | "Scanf" | "Seq" | "Set" | "Spacetime" 
| "Stack" | "StdLabels" | "Stream" | "String" | "StringLabels" | "Sys" 
|  "Uchar" | "Unit" | "Weak" -> true 
| _ -> false

let capitalized name = 
  assert (String.length name > 0);
  let c = Char.code name.[0] in 
  c >= Char.code 'A' && c <= Char.code 'Z'

let normalize_ident name = 
(* en B "Un identificateur est une séquence de lettres, 
         de chiffres ou du caractère souligné "_". 
         Le premier caractère doit être une lettre. 
         Les lettres minuscules et majuscules sont distinguées. 
         Un identificateur peut être de taille quelconque." *)
  assert (String.length name > 0);
  if name_collision name 
  then "___" ^ name (* NB : pas de collision possible avec un identificateur B *)
  else if capitalized name then "_" ^ name  (* NB : pas de collision possible avec un identificateur B *)
  else name

let normalize_capitalized name = 
  (* ATTENTION : on impose la contrainte suivante : on ne distingue pas le 1er caractère (eg. dans m0 et M0) *)
  let b = match String.index_opt name '_' with
  | None -> capitalized name
  | Some i -> i + 1 = String.length name || name.[i+1] <> '_' in
  if b then String.capitalize_ascii name else "M_" ^ name 


let normalize_module_name = normalize_capitalized

 