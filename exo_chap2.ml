(** [pow x n] is x to the nth power. 
 * Raises: [invalid_arg "n"] when n < 0 *)
let rec pow x n = 
    if n < 0 then 
        invalid_arg "n";
    if n = 0 then 1. else x *. pow x (n-1)


(** [double x] is 2 * x. *)
let double n = 2 * n

(* testing double *)
(* assert (double 2 = 4)
assert (double (-6) = (-12)) *)


(* [sign n] is the sign of n *)
let sign n = 
    if n = 0 then 0 
    else if n < 0 then (-1)
    else 1

(* testing sign *)
(* 
 * assert (sign (-7) = (-1))
 * assert (sign 7 = 1) 
 * assert (sign 0 = 0) *)

let area_circle r = Float.pi *. r *. r

(* testing area_circ
 * assert (area_circ 1 = Float.pi)
 * assert (((area_circ 1) -. Float.pi) < 1e-4) *)

let is_date day month =
    if List.mem month ["Apr"; "Jun"; "Sep"; "Nov"]  
    then 
        if day <= 31 then 
            print_string("is date") else print_string("is not")
    else if List.mem month ["Jan"; "Mar"; "May"; "Jul"; "Aug"; "Oct"; "Dic"]  then
        if day <= 30 then 
            print_string("is date") else print_string("is not")
    else
        if day <= 28 then
            print_string("is date") else print_string("is not")


let rec fib n = 
    if n = 0 then 1 
    else if n = 1 then 1 
    else fib (n-1) + fib (n-2)


