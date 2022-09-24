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


