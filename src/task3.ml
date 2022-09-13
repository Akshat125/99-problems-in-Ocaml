(* The task was adapted, instead of option the return type is 'a*)

let rec nth_elem (l:'a list) (n:int) :'a = 
  match l with [] -> failwith "n out of bounds!"
             | a::b -> if n = 0 then a else nth_elem b (n-1)