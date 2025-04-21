let ft_rot_n n str =
	let rot c =
		let base_value =
		if c >= 'a' && c <= 'z'
			then int_of_char 'a'
		else if c >= 'A' && c <= 'Z'
			then int_of_char 'A'
		else
			-1
		in
		if base_value > 0 then
			let c_value = int_of_char c in
			let diff = (c_value + n - base_value) mod 26 in
			char_of_int (base_value + diff)
		else c
	in
	String.map rot str


let () =
	print_endline "=== test with 1 on \"abcdefghijklmnopqrstuvwxyz\" ===";
	print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	print_endline "=== test with 13 on \"abcdefghijklmnopqrstuvwxyz\" ===";
	print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	print_endline "=== test with 42 on \"0123456789\" ===";
	print_endline (ft_rot_n 42 "0123456789");
	print_endline "=== test with 2 on \"OI2EAS67B9\" ===";
	print_endline (ft_rot_n 2 "OI2EAS67B9");
	print_endline "=== test with 0 on \"Damned !\" ===";
	print_endline (ft_rot_n 0 "Damned !");
	print_endline "=== test with 42 on \"\" ===";
	print_endline (ft_rot_n 42 "");
	print_endline "=== test with 1 on \"NBzlk qnbjr !\" ===";
	print_endline (ft_rot_n 1 "NBzlk qnbjr !");
