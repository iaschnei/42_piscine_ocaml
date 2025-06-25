let rec iter f x n = 
  if n = 0 then x
  else if n < 0 then -1
  else iter f (f x) (n - 1)


(* Test : *)
let double x = 2 * x

let () =
  Printf.printf "iter(double 2 2) = %d\n" (iter double 2 2);
  Printf.printf "iter(double 0 2) = %d\n" (iter double 0 2);
  Printf.printf "iter(double 2 0) = %d\n" (iter double 2 0);
  Printf.printf "iter(double 2 -1) = %d\n" (iter double 2 (-1));
  Printf.printf "iter(double 3 4) = %d\n" (iter double 3 4);