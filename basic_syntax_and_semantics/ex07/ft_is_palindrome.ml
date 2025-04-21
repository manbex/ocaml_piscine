let ft_is_palindrome str =
	let rec loop i j =
		if i < j then
			if String.get str i == String.get str (j - 1)
				then loop (i + 1) (j - 1)
				else false
		else
			true
	in
	loop 0 (String.length str)


let () =
	let print_bool value =
		if value == true
			then print_endline "true"
			else print_endline "false"
	in

	print_endline "=== test with \"radar\" ===";
	print_bool (ft_is_palindrome "radar");
	print_endline "=== test with \"madam\" ===";
	print_bool (ft_is_palindrome "madam");
	print_endline "=== test with \"car\" ===";
	print_bool (ft_is_palindrome "car");
	print_endline "=== test with \"\" ===";
	print_bool (ft_is_palindrome "")
