let ft_countdown n =
	let rec loop n =
		if n >= 0 then
		begin
			print_int n;
			print_char '\n';
			loop (n - 1)
		end
	in
	if n < 0 then
	begin
		print_int 0;
		print_char '\n'
	end
	else
		loop n
	
