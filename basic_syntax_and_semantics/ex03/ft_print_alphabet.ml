let ft_print_alphabet () =
	let char_value_a = int_of_char 'a' in
	let char_value_z = int_of_char 'z' in
	let rec loop c =
		if c <= char_value_z then
			begin
				print_char (char_of_int c);
				loop(c + 1)
			end
	in
	loop(char_value_a);
	print_char '\n'


let () = ft_print_alphabet ()
