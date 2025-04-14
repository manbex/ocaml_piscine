let ft_print_comb2 () =
	let check_separation i j =
		if i == 98 && j == 99
		then ()
		else 
			begin
				print_char ',';
				print_char ' '
			end
	in
	let print_number n =
		let () = if n <= 9
			then print_char '0' in
		print_int n
	in
	let rec loop2 i j =
		if j <= 99 then
			begin
				print_number i;
				print_char ' ';
				print_number j;
				check_separation i j;
				loop2 i (j + 1)
			end
	in
	let rec loop1 i =
		if i <= 98 then
			begin
				loop2 i (i + 1);
				loop1 (i + 1)
			end
	in
	loop1 0;
	print_char '\n'

