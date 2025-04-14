let is_digit c = c >= '0' && c <= '9'
let is_capital_letter c = c >= 'A' && c <= 'Z'

let print_bool value =
	if value == true
		then print_endline "true"
		else print_endline "false"

let () =
	print_endline "=== test with is_digit on \"0123456789\" ===";
	print_bool (Ft_string_all.ft_string_all is_digit "0123456789");
	print_endline "=== test with is_digit on \"012EAS67B9\" ===";
	print_bool (Ft_string_all.ft_string_all is_digit "012EAS67B9");
	print_endline "=== test with is_capital_letter on \"ABCDEFGH\" ===";
	print_bool (Ft_string_all.ft_string_all is_capital_letter "ABCDEFGH");
	print_endline "=== test with is_capital_letter on \"ABCDEfGH\" ===";
	print_bool (Ft_string_all.ft_string_all is_capital_letter "ABCDEfGH")
