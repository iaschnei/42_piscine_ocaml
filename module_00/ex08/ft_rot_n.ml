let ft_rot_n n str = 
  let rot c = 
    if c >= 'a' && c <='z' then
      char_of_int(((int_of_char c - int_of_char 'a' + n) mod 26) + int_of_char 'a')
    else if c >= 'A' && c <= 'Z' then
      char_of_int(((int_of_char c - int_of_char 'A' + n) mod 26) + int_of_char 'A')
    else
      c
    in
  String.map rot str


(*
Using utop :

#use "ft_rot_n.ml";;


ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz";;
ft_rot_n 0 "abcdefghijklmnopqrstuvwxyz";;
ft_rot_n 42 "0123456789";;
ft_rot_n 42 "Bonjour";;

*)