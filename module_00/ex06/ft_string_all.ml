let ft_string_all pred str = 
  let rec loop x =
    if x >= String.length str then true
    else if not (pred (String.get str x)) then false
    else loop (x + 1)
  in
  loop 0

(*
Using utop :

#use "ft_string_all.ml";;

let is_digit c = c >= '0' && c <= '9';;

ft_string_all is_digit "0123456789";;
ft_string_all is_digit "012EGHJ784";;
ft_string_all is_digit "000000";;

*)