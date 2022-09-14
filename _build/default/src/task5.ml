let rev l = 
  let rec helper_method l acc = match l with
      [] -> acc
      | a::b -> helper_method b (a::acc)

  in helper_method l []