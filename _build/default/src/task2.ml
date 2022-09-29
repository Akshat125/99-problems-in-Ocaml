let rec last_two l = match l with
    | [_] | []-> None
    | a::[b] -> Some (a,b)
    | _::b -> last_two b