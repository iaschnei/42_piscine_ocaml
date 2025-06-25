let repeat_x x =
  let rec loop x = 
    if x <= 0 then "" else "x" ^ loop (x - 1)
  in
  if x < 0 then "Error" else "\"" ^ loop (x) ^ "\""


let test x =
  let result = repeat_x x in
  Printf.printf "repeat_x %d -> %s\n" x result

let () =
  test 3;
  test 6;
  test 0;
  test (-1)