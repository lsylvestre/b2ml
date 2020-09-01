{ 

type component = M | R | I

let component = ref M

let print oc = Printf.fprintf oc "%s"
let printc oc = Printf.fprintf oc "%c"

let keep = ref true

let maybe_print oc s = 
  Printf.fprintf oc "%s" 
    (if !keep then s else (String.map (fun _ -> ' ') s))

let maybe_printc oc c = 
  Printf.fprintf oc "%c" 
    (if !keep then c else ' ')
    
let in_implementation () = keep := !component = I
let everywhere () = keep := true
let nowhere () = keep := false

}

rule token oc = parse
| "/*"                   { comment oc lexbuf ; token oc lexbuf}

| "MACHINE" as s          { component := M; print oc s ; token oc lexbuf}
| "REFINEMENT" as s       { component := R; print oc s ; token oc lexbuf}
| "IMPLEMENTATION" as s   { component := I; print oc s ; token oc lexbuf}

| "SEES"
| "INCLUDES" 
| "PROMOTES" 
| "EXTENDS"
| "USES" 
| "SETS" 
| "CONCRETE_CONSTANTS" 
| "CONCRETE_VARIABLES" as s { everywhere (); 
                              maybe_print oc s ; 
                              token oc lexbuf }
| "VALUES" 
| "OPERATIONS"
| "LOCAL_OPERATIONS"
| "INITIALISATION" as s     { in_implementation (); 
                              maybe_print oc s ; 
                              token oc lexbuf}
| "CONSTRAINTS"
| "ABSTRACT_CONSTANTS" 
| "PROPERTIES"
| "ABSTRACT_VARIABLES"
| "VARIABLES"
| "INVARIANT"
| "ASSERTIONS" as s         { nowhere (); 
                              maybe_print oc s ; 
                              token oc lexbuf }

| "VARIANT" as s            { in_implementation (); 
                              maybe_print oc s ; 
                              token oc lexbuf }

| ['\n' ] | ['\r''\n' ]     { printc oc '\n' ; token oc lexbuf}
| [' ' '\t']                { printc oc ' ' ; token oc lexbuf}
| eof                       { if not !keep then print oc "END" ; everywhere ()}
| _ as c                    { maybe_printc oc c ; token oc lexbuf}


and comment oc = parse 
| "*/"     { token oc lexbuf }
| ['\n' ] | ['\r''\n' ]  {printc oc '\n'; comment oc lexbuf }
| _        { printc oc ' ';comment oc lexbuf }
