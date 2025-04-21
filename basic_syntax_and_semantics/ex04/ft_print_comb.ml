let ft_print_comb () =
	let check_separation i j k =
		if i == 7 && j == 8 && k == 9
		then ()
		else print_string ", "
	in
	let rec loop3 i j k =
		if k <= 9 then
			begin
				print_int i;
				print_int j;
				print_int k;
				check_separation i j k;
				loop3 i j (k + 1)
			end
	in
	let rec loop2 i j =
		if j <= 8 then
			begin
				loop3 i j (j + 1);
				loop2 i (j + 1)
			end
	in
	let rec loop1 i =
		if i <= 7 then
			begin
				loop2 i (i + 1);
				loop1 (i + 1)
			end
	in
	loop1 0;
	print_string "\n"


let () = ft_print_comb ()
