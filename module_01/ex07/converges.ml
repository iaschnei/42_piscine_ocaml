let rec converges f x n = 
  if n < 0 then false
  else if x = f x then true
  else converges f (f x) (n-1)

(* Test *)
let divide x = x / 2

let () =
  Printf.printf "converges(divide 2 3) = %b\n" (converges divide 2 3);
  Printf.printf "converges(divide 2 2) = %b\n" (converges divide 2 2);
  Printf.printf "converges(divide 3 4) = %b\n" (converges divide 3 4);
  Printf.printf "converges(divide 2 -1) = %b\n" (converges divide 2 (-1));