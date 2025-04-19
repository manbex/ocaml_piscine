let iter f x n =
	let rec loop i value =
		if i == 0
		then value
		else loop (i-1) (f value)
	in
	if n < 0 then -1
	else loop n x

let () =
	print_endline ("=== test with (fun x -> x * x) 2 4 ===");
	print_endline (string_of_int (iter (fun x -> x * x) 2 4));
	print_endline ("=== test with (fun x -> x * 2) 2 4 ===");
	print_endline (string_of_int (iter (fun x -> x * 2) 2 4))
