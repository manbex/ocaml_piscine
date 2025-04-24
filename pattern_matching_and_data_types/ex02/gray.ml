let gray n =
	let rec print_bit x n =
		if n > 0 then
			print_bit (x/2) (n-1); print_int (x mod 2)
	in

	let rec loop i =
		if i < 1 lsl n then
			begin
				if i > 0 then
					print_string " ";
				print_bit (i lxor (i lsr 1)) (n-1);
				loop (i+1)
			end
	in

	if n > 0 then
		loop 0;
	print_char '\n'

let () =
	gray 1;
	gray 2;
	gray 3;
	gray 4
