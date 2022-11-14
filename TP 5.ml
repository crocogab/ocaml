let rec retirer (liste:'a list) (element:'a) :'a list=
  match liste with
  |[] -> failwith "Element pas dans la liste"
  |[a] -> if a=element then [] else retirer [] element
  |a::q -> if a=element then q else a::(retirer q element);;

(* dans le pire des cas on parcourt toute la liste donc 0(n) *)

let rec minimum (liste:'a list) :'a=
  match liste with
  |[] -> failwith "liste vide"
  |[a] -> a
  |a::b::q -> if a<b then minimum (a::q) else minimum (b::q);;

let rec tri_retirer (u:'a list):'a list=
  match u with
  |[]->[]
  |a::q -> let n=(minimum u) in n::(tri_retirer (retirer u n));;