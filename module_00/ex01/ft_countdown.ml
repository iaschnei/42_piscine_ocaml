let rec ft_countdown x = if x <= 0 then (print_int(0); print_char('\n')) else (print_int(x); print_char ('\n'); ft_countdown (x - 1))

(*
Using utop :

#use "ft_countdown.ml";;

ft_countdown 3;;
ft_countdown 0;;
ft_countdown (-1);;
ft_countdown 10;;

*)