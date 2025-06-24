let ft_is_palindrome str = 
  let rec check x y =
    if y >= String.length str then true
    else if  String.get str x <> String.get str y then false
    else (check (x - 1) (y + 1))
  in
  check (String.length str - 1) 0

(*
Using utop :

#use "ft_is_palindrome.ml";;


ft_is_palindrome "radar";;
ft_is_palindrome "madam";;
ft_is_palindrome "car";;
ft_is_palindrome "";;

*)