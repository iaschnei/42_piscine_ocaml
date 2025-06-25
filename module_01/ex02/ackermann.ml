let rec ackermann m n = 
  if m < 0 || n < 0 then -1
  else if m = 0 then n + 1
  else if n = 0 then ackermann (m-1) 1
  else ackermann (m -1) (ackermann m (n-1))


(*
Developed by Wilhelm Ackermann in the 1920s to demonstrate a computable function beyond primitive recursion;
a milestone in the theory of computation.
*)

let () =
  Printf.printf "A(-1, 0) = %d\n" (ackermann (-1) 0);
  Printf.printf "A(0, 0) = %d\n" (ackermann 0 0);
  Printf.printf "A(1, 2) = %d\n" (ackermann 1 2);
  Printf.printf "A(2, 2) = %d\n" (ackermann 2 3);
  Printf.printf "A(3, 2) = %d\n" (ackermann 4 1);