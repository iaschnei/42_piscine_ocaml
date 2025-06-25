let rec hfs_f n =
  if n = 0 then 1
  else if n < 0 then -1
  else (n - hfs_m(hfs_f(n - 1)))
and hfs_m n = 
  if n = 0 then 0
  else if n < 0 then -1
  else (n - hfs_f(hfs_m(n-1)))


let () =
  Printf.printf "hfs_m(0) = %d\n" (hfs_m 0);
  Printf.printf "hfs_f(0) = %d\n" (hfs_f 0);
  Printf.printf "hfs_m(4) = %d\n" (hfs_m 4);
  Printf.printf "hfs_f(4) = %d\n" (hfs_f 4);
  Printf.printf "hfs_m(-1) = %d\n" (hfs_m (-1));
  Printf.printf "hfs_f(-1) = %d\n" (hfs_f (-1));