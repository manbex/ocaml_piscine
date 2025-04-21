let ft_print_rev str =
	let rec loop i =
		if i >= 0 then
			begin
				print_char (String.get str i);
				loop (i - 1)
			end
	in
	loop ((String.length str) - 1);
	print_char '\n'


let () =
	begin
		print_endline "Ceci est une string de test";
		ft_print_rev "Ceci est une string de test";
		print_endline "Hello world !";
		ft_print_rev "Hello world !";
		print_endline "";
		ft_print_rev ""
	end
