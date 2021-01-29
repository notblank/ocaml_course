
let rec length lst =
    match lst with
    | [] -> 0
    | h::t -> 1 + length t


let rec sum lst =
    match lst with
    | h::t -> h + sum t
    | [] -> 0;;

