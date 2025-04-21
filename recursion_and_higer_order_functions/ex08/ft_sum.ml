let ft_sum f i n =
	let rec loop i sum =
		if i > n
		then sum
		else (loop [@tailcall]) (i+1) (sum +. f i)
	in
	if n < i
	then nan
	else loop i 0.0

let () =
	print_endline "=== test with (fun i -> float_of_int (i * i)) 1 0 ===";
	print_endline (string_of_float (ft_sum (fun i -> float_of_int (i * i)) 1 0));
	print_endline "=== test with (fun i -> float_of_int (i * i)) 1 10 ===";
	print_endline (string_of_float (ft_sum (fun i -> float_of_int (i * i)) 1 10));
	print_endline "=== test with (fun i -> float_of_int i) 1 9 ===";
	print_endline (string_of_float (ft_sum (fun i -> float_of_int (i)) 1 9))
