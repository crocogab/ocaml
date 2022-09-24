let rec trouver_element (fonction:'a -> bool) (liste:'a list) = match liste with
  | [] -> failwith "erreur liste vide"
  | a::[] -> if fonction a then a else failwith "erreur"
  | a::q -> if fonction a then a else trouver_element fonction q;;

let mon_test x = x>5;;

trouver_element mon_test [-5;-8;3;5];;



let rec trouver_element_2 (f:'a ->bool) (l:'a list) :'a option= match l with  
  | [] -> None 
  | h::t when f h -> Some h
  |_::t -> trouver_element_2 f t;;



(* Exercice 2*)

let rec tete (listes:'a list list) : 'a list = match listes with
  |[] -> []
  | a::q -> begin 
      match a with
      |[] -> tete q
      |b::c -> b:: tete q 
    end;;

(* Exercice 3*)

let rec maximum (liste_u:int list) (liste_v:int list) :int list = match liste_u,liste_v with
  | [],[] -> []
  | _,[] |[],_ -> []
  | a::q , b::l -> if a>b  then a::(maximum q l) else b::(maximum q l);;


(* Exercice 4*)


let rec fusion (liste_u:'a list) (liste_v:'a list) :'a list =match liste_u,liste_v with
  | [],[] -> []
  | [],_ -> v
  | _,[] ->u
  | a::q,h::t if a<h then a::fusion q (h::t) else h::fusion (a::q) t;;