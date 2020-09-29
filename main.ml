(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* point d'entrée du programme *)

let inputs = ref []
let output_name = ref "b_translation"
let input_folder = ref ""

let destination_dir = ref "generated_files"
let runtime = ref "runtime/runtime.ml"
let externals = ref []

let add_file f =
  inputs := !inputs @ [f] ;;

let () =
  Arg.parse [("-I", Arg.Set_string input_folder, 
              "dossier où trouver les sources à traduire");
             ("-dst", Arg.Set_string destination_dir, 
              "<file>  Set output directory name to <dir>");
             ("-o", Arg.Set_string output_name, 
              "<file>  Set output file name to <file>");
             ("-runtime", Arg.Set_string runtime,
             "<file> emplacement de la bibliothèque d'exécution");
             ("-externals", Arg.String (fun filename -> externals := !externals @ [filename]),
             "<file> Add an \"extern\" OCaml file") ]
    add_file "Usage:\n ./b2ml filenames"

let () = 
  if not @@ Filename.check_suffix !output_name "ml" 
  then output_name := !output_name ^ ".ml"

let load_file (ic : in_channel) : string =
  let n = in_channel_length ic in
  let s = Bytes.create n in
  really_input ic s 0 n;
  close_in ic;
  (Bytes.to_string s)


(* analyse syntaxique *)
let parse (filename : string) : Ast.component option =
  let ic = open_in (Filename.concat !input_folder filename) in
  let oc = open_out "tmp/tmp" in
  let lexbuf = Lexing.from_channel ~with_positions:true ic in
  let () = Prelex.token oc lexbuf in
  close_out oc;
  close_in ic;
  let ic = open_in "tmp/tmp" in
  let lexbuf = Lexing.from_channel ~with_positions:true ic in
  (* close_in ic; *)
  Err.current_file_name := filename;
  Parser.component_eof Lexer.token lexbuf




let main ~runtime ~externals ~dst ~translate () =
  (* construction de l'ast de chaque composant B *)
  let asts = List.filter_map parse !inputs in

  (* fusion des modules B (une machine et ses raffinement) 
     ~> un module devient un composant *)
  let components = Merge.merge_components asts in

  (* les machines externes déclarées ne sont pas redéfinies *)
  let components = 
    List.filter (fun Ast.{desc=Component{name}} -> 
                    not (List.mem name !Ast.initMchs)) components 
  in

  (* inférence de type, annote certains noeud de l'AST *)
  Typing.typComponents ~init_envTy:(!Ast.initEnvTy) components;

  let oc = open_out (Filename.concat !destination_dir dst) in
    (* bibliothèque d'execution *)
    
    let () =
      let ic = open_in runtime in 
      Printf.fprintf oc "%s\n" (load_file ic);
      close_in ic 
    in
    List.iter  (fun filename -> 
        let ic = open_in (Filename.concat !input_folder filename) in 
        Printf.fprintf oc "%s\n" (load_file ic);
        close_in ic) externals;
   
    (* traduction *)
    Printf.fprintf oc "%s\n" (translate ~components);
    
    close_out oc


let () = 
  let translate ~components = 
     Translate.translate 
        ~intial_env:(List.map (fun (x,ty) -> (x,Target.Cst)) !Ast.initEnvTy) 
        ~components
  in
  main ~runtime:(!runtime) ~externals:(!externals) ~dst:(!output_name) ~translate ()

