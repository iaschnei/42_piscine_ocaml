let print_two_digits n = 
  let tens = n / 10 in
  let units = n mod 10 in 
  print_int(tens);
  print_int(units)

let ft_print_comb2 () = 
  let rec loop a b = 
    if a < 99 then
      begin
        print_two_digits a;
        print_char ' ';
        print_two_digits b;
        if not (a = 98 && b = 99) then
          begin
            print_char ',';
            print_char ' '
          end;
        if b < 99 then
          loop a (b + 1)
        else
          loop (a + 1) (a + 2)
      end
    else
      print_char '\n'
    in
  loop 0 1


