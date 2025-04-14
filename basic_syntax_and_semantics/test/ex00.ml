let () =
	begin
		print_endline "=== test with 42 ===";
		Ft_test_sign.ft_test_sign 42;
		print_char '\n';
		print_endline "=== test with 0 ===";
		Ft_test_sign.ft_test_sign 0;
		print_char '\n';
		print_endline "=== test with -42 ===";
		Ft_test_sign.ft_test_sign (-42)
	end
