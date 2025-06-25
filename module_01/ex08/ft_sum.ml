(* Applies the function f to every int between a and b and return the sum of it *)
let ft_sum f a b =
  if b < a then nan
  else
    let rec loop index result = 
    if index > b then result
    else loop (index + 1) (result +. f index)
  in
  loop a 0.0

(* Test *)

let square x = float_of_int (x * x)

let () =
  Printf.printf "ft_sum(square 2 2) = %f\n" (ft_sum square 2 2);
  Printf.printf "ft_sum(square 0 2) = %f\n" (ft_sum square 0 2);
  Printf.printf "ft_sum(square (-1) 2) = %f\n" (ft_sum square (-1) 2);
  Printf.printf "ft_sum(square 5 2) = %f\n" (ft_sum square 5 2);
  Printf.printf "ft_sum(square 1 10) = %f\n" (ft_sum square 1 10);