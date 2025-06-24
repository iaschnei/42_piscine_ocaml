let rec print_c a b c =
  if c > 9 then ()
  else
    (
      print_int a;
      print_int b;
      print_int c;
      if not (a = 7 && b = 8 && c = 9) then print_string ", ";
      print_c a b (c + 1)
    )

let rec print_b a b = 
  if b > 8 then ()
  else
    (
      print_c a b (b + 1);
      print_b a (b + 1)
    )

let rec print_a a = 
  if a > 7 then ()
  else
    (
      print_b a (a + 1);
      print_a (a + 1)
    )




let ft_print_comb () = print_a 0


(*
Using utop :

#use "ft_print_comb.ml";;

ft_print_comb ();;

*)