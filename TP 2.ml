(* Ceci est un éditeur pour OCaml
   Entrez votre programme ici, et envoyez-le au toplevel en utilisant le
   bouton "Évaluer le code" ci-dessous ou [Ctrl-e]. *)

let norme a b = sqrt (a**2.0 +. b**2.0);;

let moyenne a b = (a +. b) /. 2.;;

(* 3.a int -> int -> int
   3.b  cela vaut 7
   3.c 
*)

let f a b = (a + b) / 2;;
  
            
let moyenne_entiers a b = (float_of_int a +. float_of_int b)/. 2.0;;
  

(* Exo 2 
   abs = valeur absolue d'un entier
   abs_float = valeur absolue d'un float *)

let my_abs a = 
  if a >= 0 then a
  else - a;;

(* Exo 3*)

let rec suite n = 
  if n=0 then 4
  else 3*suite(n-1)+2 ;;

(* exo 4

   2. On obtient une erreur 
*)

let rec factorielle n=
  if n=0 then 1
  else (factorielle (n-1)) * n ;;

(*Exo 5*)

let rec somme_carres n=
  if n=1 then 1
  else n*n +somme_carres(n-1);;

(*Exo 6 / A refaire*)

let rec puissance a n = 
  if n=0 then 1
  else int_of_float(a) *(puissance a (n-1));;


let rec puissance_bis x n=
  if n=0 then 1.
  else if n>0 then puissance_bis x (n-1)*.x 
  else puissance_bis x(n+1) /.x;;
  
  
  
  
(*Exo 7*)
let rec somme_liste liste = match liste with
  | []->0.
  | a::q ->a+. somme_liste q;;

let rec longueur liste = match liste with
  | []->0
  | a::q -> 1+ longueur q;;


let moyenne liste =
  somme_liste liste /. float_of_int(longueur liste);;

(*Exo 8*)


let rec croissant liste = match liste with
  |a::b::q -> a<=b && croissant (b::q) 
  |_ -> true;;

(* exo 9*)


let rec concat (liste_1:'a list) (liste_2:'a list) = match liste_1 with
  | [] ->  liste_2
  | a::q -> a::(concat q liste_2);;
    
  



(* exo 10*)

let miroir lst =
  let rec aux (acc,l) = match l with
    | [] -> acc
    |a::q -> aux(a::acc,q)
  in aux([],lst);;

(* exo 11*)

let rec uniques (liste:'a list) = match liste with
  | [] -> []
  | [a] -> [a]
  | a::b::q -> 
      if a <> b then 
        a :: uniques (b::q)
      else 
        uniques (b::q);;

(* Exercice 1*)

let rec last_elem (liste:'a list) = match liste with
  | []-> failwith "La liste vide n'a pas de dernier element"
  | a::[] -> a
  | a::q -> last_elem q;;
    
(* Exercice 2*)

let rec un_sur_trois (liste:'a list) = match liste with
  | [] -> []
  | [a] -> [a]
  | a::b::[] -> a::b::[]
  | a::b::q -> a::un_sur_trois (q);;
                 

