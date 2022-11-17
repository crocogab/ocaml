exception FileVide ;;
exception FilePleine ;;

let cap = 1024;;

type 'a my_queue =
  {
    capacite : int;
    mutable arriere : int;
    mutable avant : int;
    mutable vide :bool;
    contenu: 'a array
  };;

(* La file ,vide : capacite = 1024 | arriere = 0 | avant= 1 | vide = true | contenu : tableau de 1024 valeurs
   La file comprenant 42 : capacite = 1024 | arriere = 0 | avant= 1 | vide = false | contenu : tableau de 1024 valeurs  
*)

let file_vide (x:'a) :'a my_queue  = 
  {
    capacite = cap;
    arriere = 0;
    avant = cap - 1;
    vide = true;
    contenu = Array.make cap x
  };;

let is_empty (file:'a my_queue):bool=
  file.vide;;

let defiler (file:'a my_queue) :'a=
  if not (is_empty file) then
    begin
      if file.avant=file.arriere then
        file.vide<-true;
      let v = file.contenu.(file.capacite) in
      file.avant<-(file.avant-1-file.capacite) mod file.capacite;
      v
    end
  else raise FileVide;;

let enfiler (file:'a my_queue) (element:'a) :unit=
  if not (is_empty file) && (file.avant +1) mod file.capacite =file.arriere then raise FilePleine
  else
    begin 
      file.vide <- false;
      if file.arriere=0 then file.arriere<-file.capacite-1 
      else
        file.arriere<-(file.arriere-1);
      file.contenu.(file.arriere)<-element; 
    end;;
  


(* on va utiliser une 'a list ref car il faut pouvoir acceder a la file et aussi pouvoir la modifier 
  