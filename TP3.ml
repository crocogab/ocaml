let somme_tab (t:int array) :int=
  let n =Array.length t in
  let somme = ref 0 in
  for i=0 to (n-1) do somme := !somme + t.(i) done;
  !somme;;



let nouveau_tableau_carres (t:int array) :int array=
  let n=Array.length t in
  let a=Array.make n 0 in
  for i=0 to (n-1) do a.(i) <- t.(i)*t.(i) done;
  a;;


(* let m = Array.make_matrix 3 4 1;;*)

let creer_matrice (lignes:int) (colonnes:int) (valeur:'a) :'a array array=
  let matrice=Array.make lignes [||] in
  for i=0 to (lignes-1) do 
    matrice.(i) <- Array.make colonnes valeur 
  done;
  matrice;;
    

let matrice_module (n:int) :int array array =
  let matrice = Array.make_matrix n n 1 in 
  for i=0 to (n-1) do
    for e=0 to (n-1) do
      matrice.(i).(e) <- (i+1) mod (e+1)
    done;
  done;
  matrice;;

let extrema (tableau:int array) :int*int =
  let min = ref tableau.(0) in
  let max = ref tableau.(0) in
  for i=0 to ((Array.length tableau) -1) do
    if tableau.(i) < !min then min:= tableau.(i) else if tableau.(i) > !max then max:= tableau.(i)
  done;
  (!min,!max);;

                                       

let nb_occs (element:'a) (tab:'a array) :int=
  let taille= Array.length tab in
  let compteur = ref 0 in
  for i=0 to (taille-1) do
    if tab.(i) = element then compteur := !compteur +1
  done;
  !compteur;;


let tab_occs (tab:int array) :int array=
  let taille = Array.length tab in
  let tab2=Array.make taille 0 in 
  for i=0 to (taille-1) do
    tab2.(i) <- (nb_occs i tab)
  done;
  tab2;;


      
      



