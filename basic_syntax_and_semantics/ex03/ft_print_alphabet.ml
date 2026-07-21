let ft_print_alphabet () =
	let z = int_of_char 'z'
	in

	let rec loop c =
		if c <= z then
			begin
			print_char (char_of_int c);
			loop (c + 1)
			end
	in

	loop (int_of_char 'a');
	print_char '\n'


let () = ft_print_alphabet ()
