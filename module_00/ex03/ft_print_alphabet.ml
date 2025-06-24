let ft_print_alphabet () = 
  let x = int_of_char('a') in
  let rec loop x = if x > int_of_char('z') then print_char '\n' else (print_char(char_of_int(x)); loop (x + 1)) in
  loop x


(*
Using utop :

#use "ft_print_alphabet.ml";;

ft_print_alphabet ();;

*)