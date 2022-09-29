
let rec rev l =
  let rec helper l acc =  match l with [] -> acc
  | x::xs  -> helper xs (x::acc)
in helper l []

let rec containsConsecutive l a = 
  match l with [] -> false 
  | x::_ -> if x = a then true else false
                        

let compress l = 
  let rec helper l l' =  match l with [] -> l'
                     | x::xs -> if containsConsecutive l' x then helper xs l' 
                                else helper xs (x :: l' )
in rev (helper l [])                                