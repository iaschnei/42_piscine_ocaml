let leibniz_pi delta =
  if delta < 0. then -1
  else
    let ref_value = 4. *. atan 1.0 in  (* Reference value of pi *)

    let rec loop index result sign =
      let intermediate = sign /. (2. *. float_of_int index +. 1.) in
      let new_result = result +. intermediate in

      (* Stop if current approximation is within the desired delta *)
      if abs_float (4. *. new_result -. ref_value) < delta then index + 1
      else loop (index + 1) new_result (-.sign)  (* Alternate sign and continue / tail recursion *)
    in

    loop 0 0.0 1.0

let () =
  Printf.printf "leibniz_pi(0.001) = %d\n" (leibniz_pi (0.001));
  Printf.printf "leibniz_pi(0.0001) = %d\n" (leibniz_pi (0.0001));
  Printf.printf "leibniz_pi(0.00001) = %d\n" (leibniz_pi (0.00001));
