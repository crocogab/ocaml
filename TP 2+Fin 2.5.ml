(*

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

(*
  let rec fusion (liste_u:'a list) (liste_v:'a list) :'a list =match liste_u,liste_v with
    | [],[] -> []
    | [],_ -> v
    | _,[] ->u
    | a::q,h::t if a<h then a::fusion q (h::t) else h::fusion (a::q) t;;
*)


(* Exercice 5*)

  type mon_nombre =
    | Entier of int  
    | Flottant of float;;

  let mon_plus (nombre:mon_nombre)  = match nombre with
    | Entier nombre -> Entier (nombre+1)
    | Flottant nombre -> Flottant (nombre +. 1.);;


  let mon_moins (nombre:mon_nombre) = match nombre with
    | Entier nombre -> Entier (nombre-1)
    | Flottant nombre -> Flottant (nombre -. 1.);;

  let mon_divise (nombre:mon_nombre) = match nombre with
    | Entier nombre -> Entier ( nombre / 2)
    | Flottant nombre -> Flottant ( nombre /. 2.);;

(*Exercice 6*)

  type 'a arbre =
    | Feuille of 'a
    | Noeud of 'a arbre *'a arbre;;
                                        
   
(* Car l'élement est composé de noeud et de feuille avec les noeuds composé de plusieurs feuilles *)

  let rec nb_feuilles (un_arbre:'a arbre) :int = match un_arbre with
    | Feuille une_feuille -> 1
    | Noeud (sous_arbre_gauche,sous_arbre_droit) -> nb_feuilles(sous_arbre_gauche) + nb_feuilles(sous_arbre_droit);;

  let rec contient (un_arbre:'a arbre) (element:'a) :bool = match un_arbre with
    | Feuille une_feuille -> une_feuille=element
    | Noeud (sous_arbre_gauche,sous_arbre_droit) -> contient sous_arbre_gauche element || contient sous_arbre_droit element;; 

*)

(*TP 2*)

let rec mem (element:'a) (ma_liste:'a list) :bool= match ma_liste with
  | [] -> false
  | [a] -> a=element
  | a::q -> a=element || mem element q;;



(*
  let rec nth (ma_liste:'a) (index:int) :'a = match ma_liste with
    | []  ->  failwith "erreur"
    | [a] -> if index =0 then (a) else nth [] (index-1)
    | a::q -> if index=0 then a else nth q (index-1);;
    
*)
  
let rec sans_doublons_triee (liste:'a list) :bool =match liste with 
  | [] -> true 
  | a::[] -> true
  | a::b::q -> if a=b then false else sans_doublons_triee (b::q);;


let rec elimine_doublons (liste:'a list) :'a list =match liste with 
  | [] -> [] 
  | a::[] -> a::[]
  | a::b::q -> if a=b then elimine_doublons (b::q) else a::(elimine_doublons (b::q));;
    
  
let rec sans_doublons (liste:'a list) :bool =match liste with
  | [] -> true
  | a::[] -> true
  | a::b::q -> if mem a (b::q) 
    
    
    
    
    
    
    
    
    



