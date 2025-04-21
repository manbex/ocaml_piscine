let ft_string_all func str  =
	let rec loop i =
		let length = String.length str in
		if i < length then
			if func (String.get str i) == true
				then loop (i + 1)
				else false
		else true
	in
	loop 0


let () =
	let is_digit c = c >= '0' && c <= '9' in
	let is_capital_letter c = c >= 'A' && c <= 'Z' in

	let print_bool value =
		if value == true
			then print_endline "true"
			else print_endline "false"
	in

	print_endline "=== test with is_digit on \"0123456789\" ===";
	print_bool (ft_string_all is_digit "0123456789");
	print_endline "=== test with is_digit on \"012EAS67B9\" ===";
	print_bool (ft_string_all is_digit "012EAS67B9");
	print_endline "=== test with is_capital_letter on \"ABCDEFGH\" ===";
	print_bool (ft_string_all is_capital_letter "ABCDEFGH");
	print_endline "=== test with is_capital_letter on \"ABCDEfGH\" ===";
	print_bool (ft_string_all is_capital_letter "ABCDEfGH")
