
let sommes_cumulees (tab:int array) :int array=
  let taille = Array.length tab in
  let tab2=Array.make taille 0 in
  for i=0 to (taille-1) do
    if i=0 then
      tab2.(0)<-tab.(0)
    else
      tab2.(i)<- tab.(i)+tab2.(i-1)
  done;
  tab2;;



let new_map (fonction:('a -> 'b)) (tab:'a array) :'b array= 
  let taille = Array.length tab in
  let tab2 = Array.make taille 0 in 
  for i=0 to (taille-1) do
    tab2.(i)<- fonction tab.(i)
  done;
  tab2;;

let new_init (taille:int) (fonction:(int->'a )) :'a array= 
  let tab2 = Array.make taille 0 in
  for i=0 to (taille-1) do
    tab2.(i) <- fonction i
  done;
  tab2;;

