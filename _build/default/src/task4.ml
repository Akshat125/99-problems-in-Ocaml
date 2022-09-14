(*Tail recursive approach:*)
let length_v1 l =
  let rec helper_method l acc = match l with 
      [] -> acc
      | a::b -> helper_method b (acc+1)
  in helper_method l 0
