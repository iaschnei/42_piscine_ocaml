let repeat_string ?(str = "x") x =
  let rec loop x = 
    if x <= 0 then "" else str ^ loop (x - 1)
  in
  if x < 0 then "Error" else "\"" ^ loop (x) ^ "\""



let test ?(str = "x") x =
  let result = repeat_string ~str x in
  Printf.printf "repeat_string \"%s\" %d -> %s\n" str x result

let () =
  test ~str:"Test" 1;
  test ~str:"Test" 3;
  test ~str:"Lo" 10;
  test 2;
  test (-1)