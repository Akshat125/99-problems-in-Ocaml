
let rec rev l =
  let rec helper l acc =  match l with [] -> acc
  | x::xs  -> helper xs (x::acc)
in helper l []

let rec containsConsecutive l a = 
  match l with [] -> true
  | x::_ -> if x = a then true else false
                        

let pack l = 
  let rec helper l l' acc =  match l with [] -> if acc <> [] then ([acc] @ l') else l'
                             | x::xs -> if (containsConsecutive acc x) then helper xs l' (x :: acc)
                                        else helper xs ([acc] @ l' ) [x]
in rev (helper l [] [])   