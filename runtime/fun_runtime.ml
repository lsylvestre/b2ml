
(** pile hétérogène *)
module type STACK = 
  sig
    type ('a, 'b) t = private { top : 'a ; pop : 'b }
    type empty = (nil, nil) t
    and nil

    val empty : empty
    val push : 'a -> ((_, _) t as 's0) -> ('a, 's0) t
    val set_hd : 'a -> (('a, _) t as 's0) -> 's0
    val set_tl : ((_, _) t as 's0) -> (('a, 's0) t as 's1) -> 's1
  end

module Stack : STACK = struct

  type ('a,'b) t = { top : 'a ; pop : 'b }
  type empty = (nil, nil) t
  and nil = unit

  let empty = ({top=();pop=()} : (nil,nil) t)
  let push top pop = {top;pop}
  let set_hd top s = {s with top}
  let set_tl pop s = {s with pop}
end

module type STATE = 
  sig
    type ('a, 'b) t = private { top : 'a ; pop : 'b }
    type empty = (nil, nil) t
    and nil

    exception Uninitialized
  
    module type VAR =
      sig
        type ('a,'scope) var
        val ref : ((_, _) t as 's0) -> (('a,_) var, 's0) t
        val set : 'a -> ((('a,_) var, _) t as 's0) -> 's0
        val fetch : (('a,_) var, _) t -> 'a
        val var : ((((_,_) var, 's0) t as 's1) -> 's1) 
                  -> ((_,_) t as 's0) -> 's0
       end

    module Var : VAR

    module type CST =
      sig
        type ('a,'scope) cst
        val def : (((_, _) t as 's0) -> 'a) -> 's0 -> (('a,_) cst, 's0) t
        val fetch : (('a,_) cst, _) t -> 'a
      end

    module Cst : CST

    (* l'état mémoire vide *)
    val empty : empty

    type 'a operator

    val def_operator : 'a -> ((_, _) t as 's0) -> ('a operator, 's0) t

    val update : (((_, _) t as 's0) -> 's0) -> ((_, 's0) t as 's1) -> 's1

    val call :
      'args ->
      ((('args -> ((_,_) t as 's0) -> 's0) operator, 's0) t as 's1) -> 's1

  end

module State : STATE = struct

  include Stack

  exception Uninitialized

  module type VAR =
    sig
      type ('a,'scope) var
      val ref : ((_, _) t as 's0) -> (('a,_) var, 's0) t
      val set : 'a -> ((('a,_) var, _) t as 's0) -> 's0
      val fetch : (('a,_) var, _) t -> 'a
      val var : 
        ((((_,_) var, 's0) t as 's1) -> 's1) 
         -> ((_,_) t as 's0) -> 's0
     end

  module Var : VAR = struct
    type ('a,'scope) var = 'a option
    let ref s = push None s
    let set v s = set_hd (Some v) s
    let fetch s =
      match s.top with
      | None -> raise Uninitialized
      | Some v -> v
    let var i s = (i (ref s)).pop
  end

  module type CST =
      sig
        type ('a,'scope) cst
        val def : (((_, _) t as 's0) -> 'a) -> 's0 -> (('a,_) cst, 's0) t
        val fetch : (('a,_) cst, _) t -> 'a
      end

  module Cst : CST = struct
    type ('a,'scope) cst = 'a
    let def f s = push (f s) s
    let fetch s = s.top
  end

  type 'a operator = 'a

  let def_operator = push

  let update f s = set_tl (f s.pop) s
  let call args s = set_tl ((s.top args) s.pop) s
end

type local
module Lv = (State.Var : State.VAR 
             with type ('a,'b) var := ('a,local) State.Var.var)

type global
module Gv = (State.Var : State.VAR 
             with type ('a,'b) var := ('a,global) State.Var.var)

type arg_out
module Arg_out = (State.Var : State.VAR 
                  with type ('a,'b) var := ('a,arg_out) State.Var.var)

type arg_in
module Arg_in = (State.Var : State.VAR 
                  with type ('a,'b) var := ('a,arg_in) State.Var.var)

type constant
module Cst = (State.Cst : State.CST 
              with type ('a,'b) cst := ('a,constant) State.Cst.cst)

(* ************* instructions ************* *)

module type INSTRUCTION = 
sig   
  (* [(i : s t)] est une fonction qui prend un état mémoire [(s1 : s)] 
     et produit un nouvel état mémoire [(s2 : s)] *)
  type 's t = 's -> 's 

  val skip : _ t
  val trace : ('s -> unit) -> 's t
  val ( $ ) : 's t -> 's t -> 's t
  val if_then_else : ('s -> bool) -> 's t -> 's t -> 's t
  val while_do : ('s -> bool) -> 's t -> 's t
  val assign : ('s -> 'v) -> ('v -> 's t) -> 's t
  val case : ('s -> 'v) -> ('v -> 's t) -> 's t 
end

module Instruction : INSTRUCTION = struct
  type 's t = 's -> 's
  
  let skip s = s

  let trace f s =
    f s; s

  let ($) i1 i2 = 
    fun s -> i2 (i1 s);;

  let if_then_else c i1 i2 s = 
    (if c s then i1 else i2) s

  let rec while_do c i s = (* NB:sans eta-expansion, cela bouclerait ! *)
    (if_then_else c (i $ while_do c i) skip) s 

  let assign f g s = g (f s) s

  let case c f s = (f (c s)) s
end

(* ************** Support pour les tableaux B ******************* *)

module type LIST_ASSOC = 
sig
  type ('a,'b) t
  val create : ('a * 'b) list -> ('a,'b) t
  val acons : 'a -> 'b -> ('a,'b) t -> ('a,'b) t
  val assoc : ('a,'b) t -> 'a -> 'b
end

module AList : LIST_ASSOC = struct
  type ('a,'b) t = ('a * 'b) list
  let create la = la
  (* mise à jour *)
  let acons k v xs =
    (k,v)::List.remove_assoc k xs

  (** recherche *)
  let assoc xs k =
    let rec aux = function
        [] -> raise Not_found
      | (k',v)::tl -> if k = k' then v else aux tl in aux xs
end

(* --------------------------------------------------- *)

open State
open Instruction

(* pow *)
let ( **~ ) b n =
  let rec aux = function 
    0 -> 1
  | n -> let b2 = aux (n / 2) in
    if n mod 2 = 0 then b2 * b2 
    else b * b2 * b2 
  in aux n;;

