let rec tak x y z =
  if y < x then 
    tak (tak (x-1) y z)
        (tak (y-1) z x)
        (tak (z-1) x y)
  else
  z

(*
Created by Ikuo Takeuchi in the 1970s 
as a recursive benchmark to explore performance and optimization of function calls in programming languages.
*)

let () =
  Printf.printf "tak(1, 2, 3) = %d\n" (tak 1 2 3);
  Printf.printf "tak(5, 23, 7) = %d\n" (tak 5 23 7);
  Printf.printf "tak(1, 1, 1) = %d\n" (tak 1 1 1);
  Printf.printf "tak(23498, 98734, 98776) = %d\n" (tak 23498 98734 98776);
  Printf.printf "tak(0, 0, 0) = %d\n" (tak 0 0 0);