type 'a node =
     | One of 'a
     | Many of 'a node list

let rec flatten (l:'a node list): 'a list = 
     match l with [] -> []
     | x::xs -> match x with 
                One a -> a :: flatten xs
                | Many l -> (flatten l) @ (flatten xs) 