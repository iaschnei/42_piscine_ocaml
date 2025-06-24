let ft_print_rev str = 
  let rec loop x =  if x >= 0 then (print_char(String.get str x); loop (x - 1)) in
  loop (String.length str - 1);
  print_char('\n')

(*
Using utop :

#use "ft_print_rev.ml";;

ft_print_rev "Hello world !";;
ft_print_rev "";;
ft_print_rev "Goodbye world !";;

*)