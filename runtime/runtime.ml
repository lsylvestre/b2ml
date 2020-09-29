let ( **~ ) b n =
  let rec aux = function
    0 -> 1
  | n -> let b2 = aux (n / 2) in
           if n mod 2 = 0 then b2 * b2
           else b * b2 * b2
         in aux n ;;

