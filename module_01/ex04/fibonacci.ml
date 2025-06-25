let fibonacci n =
  (* Loops n times (index) with current becoming next (current + next) after each loop *)
  let rec loop current next index =
    if index = n then current
    else loop next (current + next) (index + 1)
  in
  if n < 0 then -1
  else loop 0 1 0                               (* Only one recursion -> tail recursion and complexity of O(n) *)


(*
Introduced by Leonardo of Pisa (Fibonacci) in 1202 to model rabbit population growth; 
the sequence became foundational in mathematics and appears throughout nature and art.
*)

let () =
  Printf.printf "fibonacci(-1) = %d\n" (fibonacci (-1));
  Printf.printf "fibonacci(0) = %d\n" (fibonacci 0);
  Printf.printf "fibonacci(1) = %d\n" (fibonacci 1);
  Printf.printf "fibonacci(2) = %d\n" (fibonacci 2);
  Printf.printf "fibonacci(3) = %d\n" (fibonacci 3);
  Printf.printf "fibonacci(5) = %d\n" (fibonacci 5);
  Printf.printf "fibonacci(10) = %d\n" (fibonacci 10)
