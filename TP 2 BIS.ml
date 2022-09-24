let rec mem (x:'a) (liste:'a list) = match liste with
  | [] -> false
  | a::q -> if a = x then true else mem x q;;

let rec nth (liste:'a list) (x:int) = match liste with
  | []  ->  failwith "erreur" 
  | a::q -> if x=0 then a else nth q (x-1);;

let rec take (a:int) (liste:'a list) =match liste with 
  | [] -> if a<0 then failwith "erreur" else []
  | b::q -> if a>0 then b::take (a-1) q else take b::q (a-1);; 