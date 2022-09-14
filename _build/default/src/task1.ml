let rect last l = match l with 
    [] -> None
    | [a] -> Some a
    | a::b -> last b