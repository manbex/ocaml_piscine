let print_bool value =
	if value == true
		then print_endline "true"
		else print_endline "false"

let () =
	print_endline "=== test with \"radar\" ===";
	print_bool (Ft_is_palindrome.ft_is_palindrome "radar");
	print_endline "=== test with \"madam\" ===";
	print_bool (Ft_is_palindrome.ft_is_palindrome "madam");
	print_endline "=== test with \"car\" ===";
	print_bool (Ft_is_palindrome.ft_is_palindrome "car");
	print_endline "=== test with \"\" ===";
	print_bool (Ft_is_palindrome.ft_is_palindrome "")
