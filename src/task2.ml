let rec last_two l = match l with
    | [_] | []-> None
    | a::[b] -> Some (a,b)
    | a::b -> last_two b