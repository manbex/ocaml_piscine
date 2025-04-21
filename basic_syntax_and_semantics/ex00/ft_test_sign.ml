let ft_test_sign n =
	let compare n =
		if n < 0
		then "negative"
		else "positive" in
	print_endline (compare n)


let () =
	begin
		print_endline "=== test with 42 ===";
		ft_test_sign 42;
		print_char '\n';
		print_endline "=== test with 0 ===";
		ft_test_sign 0;
		print_char '\n';
		print_endline "=== test with -42 ===";
		ft_test_sign (-42)
	end
