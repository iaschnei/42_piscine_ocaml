let ft_test_sign x = (if x >= 0 then print_endline("positive") else print_endline("negative\n"))

(*
Using utop :

#use "ft_test_sign.ml";;

ft_test_sign 42;;
ft_test_sign 0;;
ft_test_sign (-42);;

*)