(* exception PileVide ;; 
                      

 type 'a stack ='a list;;

 let pile_vide :'a stack = [];;

 let est_vide (pile:'a stack) :bool =
   pile=pile_vide ;;

 let rec ajouter (element:'a) (pile:'a stack) :'a stack=
   element::pile;;

 let rec retirer (pile:'a stack) :'a * 'a stack=
   match pile with
   |[] -> raise PileVide
   |a::q -> (a,q);;

 type 'a stack_1='a list ref;;



 let pile_vide2 () :'a stack_1 = 
   ref []
 ;;

 let est_vide2 (pile:'a stack_1):bool= 
   !pile=[]
 ;;

 let ajouter2 (element:'a) (pile:'a stack_1):unit =
   pile := element :: !pile
 ;;

 let retirer2 (pile:'a stack_1):'a =
   match !pile with 
   |[] -> raise PileVide
   |a::q-> begin
       pile:=q;
       a
     end ;;

*)

type ’a my_stack_2 = { capacite : int ; mutable sommet : int ; contenu : ’a array };;

(*
capacite:4 sommet:0 contenu:[|42;0;0;0|]
capacite:4 sommet:2 contenu: [|1;2;3;"MP2I"|]
capacité:0 sommet:0  contenu: [||]
*)

let is_empty (pile:'a my_stack_2)=
  if pile.sommet = -1 then true else false;;

let empty_stack (x:'a):'a stack=
  {capacite = 8 ; sommet = -1 ; contenu = Array.make 8 x };;
  
  
exception PileVide;;
exception PilePleine;;


type 'a my_stack=
  {
    capacite:int;
    mutable sommet:int;
    contenu:'a array
    
  };;

let taille_max = 8;;

let empty_stack (x:'a) : 'a my_stack=
  {capacité =taille_max ; sommet = -1;contenu = Array.make 8 x};;

let is_empty (p:'a stack) 'bool=
  p.sommet = -1;;

let push (p:'a my_stack) (x:'a) :unit=
  if p.sommet < taille_max then 
    begin
      p.sommet <-p.sommet +1;
      p.contenu.(p.sommet) <- x
    end
  else
    raise PilePleine;;

let pop (p:'a my_stack): 'a =
  if p.sommet <0 then p.sommet <- p.sommet -1;;
        
  
