let ft_countdown n =
	let rec loop i =
		if i >= 0 then
			begin
			print_int i;
			print_char '\n';
			loop (i - 1)
			end
	in
	if n < 0 then
		begin
		print_int 0;
		print_char '\n'
		end
	else
		loop n
	

let () =
	begin
	print_endline "=== test with 5 ===";
	ft_countdown(5);
	print_endline "\n=== test with 12 ===";
	ft_countdown(12);
	print_endline "\n=== test with -1 ===";
	ft_countdown(-1)
	end
