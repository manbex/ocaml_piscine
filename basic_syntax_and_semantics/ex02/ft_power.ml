let rec ft_power x y =
	if y > 0
	then x * (ft_power x (y - 1))
	else 1


let () =
	print_endline "=== test with 5^2 ===";
	print_int (ft_power 5 2);
	print_char '\n';
	print_endline "=== test with 2^8 ===";
	print_int (ft_power 2 8);
	print_char '\n';
	print_endline "=== test with 0^6 ===";
	print_int (ft_power 0 6);
	print_char '\n';
	print_endline "=== test with 9^0 ===";
	print_int (ft_power 8 0);
	print_char '\n'
