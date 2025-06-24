let rec ft_power x y =  
  if y = 0 then 1
  else x * ft_power x (y - 1)


(*
Using utop :

#use "ft_power.ml";;

ft_power 2 4;;
ft_power 3 0;;
ft_power 0 5;;
ft_power 3 3;;

*)