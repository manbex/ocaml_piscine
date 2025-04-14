let () =
	print_endline "=== test with 1 on \"abcdefghijklmnopqrstuvwxyz\" ===";
	print_endline (Ft_rot_n.ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	print_endline "=== test with 13 on \"abcdefghijklmnopqrstuvwxyz\" ===";
	print_endline (Ft_rot_n.ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	print_endline "=== test with 42 on \"0123456789\" ===";
	print_endline (Ft_rot_n.ft_rot_n 42 "0123456789");
	print_endline "=== test with 2 on \"OI2EAS67B9\" ===";
	print_endline (Ft_rot_n.ft_rot_n 2 "OI2EAS67B9");
	print_endline "=== test with 0 on \"Damned !\" ===";
	print_endline (Ft_rot_n.ft_rot_n 0 "Damned !");
	print_endline "=== test with 42 on \"\" ===";
	print_endline (Ft_rot_n.ft_rot_n 42 "");
	print_endline "=== test with 1 on \"NBzlk qnbjr !\" ===";
	print_endline (Ft_rot_n.ft_rot_n 1 "NBzlk qnbjr !");
