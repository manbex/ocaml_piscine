let ft_print_comb () =
	let check_separation n1 n2 n3 =
		if n1 == 7 && n2 == 8 && n3 == 9
		then ()
		else print_string ", "
	in
	let rec loop3 n1 n2 n3 =
		if n3 <= 9 then
			begin
				print_int n1;
				print_int n2;
				print_int n3;
				check_separation n1 n2 n3;
				loop3 n1 n2 (n3 + 1)
			end
	in
	let rec loop2 n1 n2 =
		if n2 <= 8 then
			begin
				loop3 n1 n2 (n2 + 1);
				loop2 n1 (n2 + 1)
			end
	in
	let rec loop1 n1 =
		if n1 <= 7 then
			begin
				loop2 n1 (n1 + 1);
				loop1 (n1 + 1)
			end
	in
	loop1 0;
	print_string "\n"
