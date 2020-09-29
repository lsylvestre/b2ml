(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

let prio_clause = function
  | Ast.Sets _ -> 0
  | Ast.Concrete_constants _ -> 1
  | Ast.Values _ -> 2
  | Ast.Sees _ -> 3
  | Ast.Inclusion _ -> 4
  | Ast.Concrete_variables _ -> 5
  | Ast.OperationsB0 _ -> 6
  | Ast.InitialisationB0 _ -> 7
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
  let components = List.map 
    (fun Ast.{loc;desc=Component ({clauses} as r)} -> 
         Ast.{loc;desc=Component {r with clauses=List.sort clauses_compare clauses}}) components 
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