let range (n : int ) : int list =
  let rec range_aux (k : int) ( acc : int list ) : int list =
    match k with 
    |0 -> acc
    |_ -> range_aux (k -1) (k:: acc)
  in
  range_aux n [] ;;

let rec somme_liste (l:int list)= 
  match l with
  |[]->0
  |a::q->a+somme_liste(q);;

(* pile d appel est tres grande (100000000) ce qui provoque un crash *)

let rec mem (liste:'a list) (elem:'a) =
  match liste with 
  |[]-> false
  |a::q-> if a=elem then true else mem q elem;; 

(* pas recursive terminale car on a n::range2 or n est ecrase  -> stack overflow error*)

let rec range2 (n : int ) : int list =
  match n with
  |0 -> []
  |_ -> n::range2 (n -1) ;;

(*exerice 4*)


let somme_liste_2 (l : int list ) : int =
  let rec somme_aux (q : int list ) (acc : int) : int =
    match q with
    |[]->acc
    |a::q-> (somme_aux q (a*acc))
  in somme_aux l 0
;;


(* exercice 5*)

(*1. elle n'est pas recursive terminal cf doc*)

let rec ieme (liste:'a list) (i:int)=
  match liste with
  |[]-> failwith "liste vide"
  |a::q-> if i = 1 then a else ieme q (i-1);;


