(*****************************************)
(** B2ML, un traducteur de B vers OCaml **)
(** ----------------------------------- **)
(** septembre 2020                      **)
(** loic.sylvestre@etu.upmc.fr          **)
(*****************************************)

(* normalisation des identificateurs B 
   ~> évite toute collision avec un mot-clé OCaml. 
  
  En B, "Un identificateur est une séquence de lettres, 
         de chiffres ou du caractère souligné "_". 
         Le premier caractère doit être une lettre. 
         Les lettres minuscules et majuscules sont distinguées." *)

(* traduction vers un identificateur OCaml *)
let normalize_ident name = 
  assert (String.length name > 0);
  "_" ^ name

(* traduction vers un nom de module OCaml *) 
let normalize_module_name name = 
  "M_" ^ name

(* traduction vers nom de constructeur OCaml *) 
let normalize_constructor name = 
  "C_" ^ name