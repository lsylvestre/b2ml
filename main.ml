(****************************************************************************)
(** B2ML, août 2020                                                        **)
(****************************************************************************)

let inputs = ref []
let output_name = ref "b_translation"
let input_folder = ref ""
let fun_translate_flag = ref false
let class_translate_flag = ref false

let destination_dir = ref "generated_files"

let add_file f =
  let file = Filename.concat !input_folder f in
  inputs := !inputs @ [file] ;;

let () =
  Arg.parse [("-I", Arg.Set_string input_folder, 
              "dossier où trouver les sources à traduire");
             ("-dst", Arg.Set_string destination_dir, 
              "<file>  Set output directory name to <dir>");
             ("-o", Arg.Set_string output_name, 
              "<file>  Set output file name to <file>");
             ("-fun", Arg.Set fun_translate_flag,
              "traduction en style fonctionnel (experimental)");
             ("-obj", Arg.Set class_translate_flag,
              "traduction en objets (experimental)") ]
    add_file "Usage:\n ./b2ml filenames"

let () = 
  if not @@ Filename.check_suffix !output_name "ml" 
  then output_name := !output_name ^ ".ml"


let load_file ic =
  let n = in_channel_length ic in
  let s = Bytes.create n in
  really_input ic s 0 n;
  close_in ic;
  (Bytes.to_string s)


let prio_clause = function
  | Ast.Sees _ -> 0
  | Ast.Inclusion _ -> 1

  | Ast.Sets _ -> 2

  | Ast.Concrete_constants _ -> 3
  | Ast.Values _ -> 3
  | Ast.Concrete_variables _ -> 4
  | Ast.OperationsB0 _ -> 5
  | Ast.InitialisationB0 _ -> 6
  | _ -> 100

let clauses_compare Ast.{desc=c1} Ast.{desc=c2} =
  compare (prio_clause c1) (prio_clause c2)


let select_opt f l = 
  let rec aux acc = function
    | [] -> None
    | x::xs ->
      if f x then Some (x,List.rev_append acc xs)
      else aux (x::acc) xs
  in
  aux [] l

let select_component ~name (components : Ast.component list) =
  select_opt (function Ast.{desc=Component {name=x}} -> x = name) components

let get_name (component : Ast.component) =
  let Ast.{desc=Component {name}} = component in name


let select_child ~(name : Ast.ident) (components : Ast.component list) =
  select_opt (function Ast.{desc=Component {component_type}} -> 
      (match component_type with 
       | Abstract_machine -> false
       | Refinement {component_name}
       | Implementation {component_name} -> component_name = name)) components


let merge_two_components ~refinement:c1 ~machine:c2 =
  let Ast.{desc=Component {clauses=clauses1}} = c1 in
  let Ast.{desc=Component ({clauses=clauses2} as r2);loc} = c2 in
  Ast.{loc;desc=Component {r2 with clauses=clauses2@clauses1}}

let is_machine = function 
  | Ast.{desc=Component {component_type=Abstract_machine}} -> true 
  | _ -> false


let merge_components (components : Ast.component list) = 
  let components = 
    let open Ast in
    List.map 
    (fun {loc;desc=Component ({clauses} as r)} -> 
         {loc;desc=Component {r with clauses=List.sort clauses_compare clauses}}) components 
  in
  let mchs,others = List.partition is_machine components in
  let rec aux acc assocs mchs others = 
    match others with 
    | [] -> List.rev acc @ mchs
    | _ -> 
      (match mchs with
       | [] -> assert false
       | machine::mchs ->
         let opt = match List.assoc_opt (get_name machine) assocs with
           | None -> select_child ~name:(get_name machine) others
           | Some name_r -> select_component ~name:name_r others in 
         match opt with
         | None -> aux (machine::acc) [] mchs others
         | Some (refinement,others_refinements) -> 
           let merged_machine = merge_two_components ~refinement ~machine in
           let assocs =
             match select_child ~name:(get_name refinement) others_refinements with 
             | None -> assocs
             | Some (refinement',_) ->
               (get_name machine,get_name refinement')::assocs 
           in
           aux acc assocs (merged_machine::mchs) others_refinements)
  in
  aux [] [] mchs others



let main ?(runtime=[]) ~dst ~translate () =

  let result = ref "" in

  (* result := !result ^ "let __alpha__ = Obj.magic 0\n\n"; *)(* hum hum *)

  List.iter  (fun runtime_file_name -> 
      let ic = open_in runtime_file_name in 
      result := !result ^ load_file ic ^ "\n"; 
      close_in ic) runtime ;

  let parse filename =
    let ic = try open_in filename with 
      | Sys_error _ -> Printf.printf "cannot open file %s. exit." filename;
        exit 0
    in
    let oc = try open_out "tmp/tmp" with | Sys_error _ -> failwith "todo" in
    let lexbuf = Lexing.from_channel ~with_positions:true ic in
    let () = Prelex.token oc lexbuf in
    close_out oc;
    let ic = try open_in "tmp/tmp" with 
      | Sys_error _ ->
        Printf.printf "cannot open file %s. exit." filename; exit 0
    in
    let lexbuf = Lexing.from_channel ~with_positions:true ic in
    (* close_in ic; *)
    Err.current_file_name := filename;
    let ast = Parser.component_eof Lexer.token lexbuf in
    ast 
  in
  let asts = List.map parse !inputs in
  let components = merge_components asts in
  Typing.typComponents components;
  result := !result ^ translate ~components;
  let oc = open_out (Filename.concat !destination_dir dst) in

  (* l'operateur d'exponentiation est ajouter au programme engendré, 
     seulement lorsqu'il est effectivement utilisé *)
  result := Runtime.make () ^ !result;

  Printf.fprintf oc "%s\n" !result;
  close_out oc

let runtime, translate = 
  if !fun_translate_flag 
  then ["runtime/fun_runtime.ml"],Fun_translate.translate 
  else if !class_translate_flag  then [],Class_translate.translate
  else [],Translate.translate

let () = main ~runtime 
    ~dst:(!output_name)
    ~translate ()

