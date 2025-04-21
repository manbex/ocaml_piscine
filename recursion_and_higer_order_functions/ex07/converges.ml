let converges f x n =
	let rec loop i value =
		let next = f value in
		if value == next then true
		else if i == 0 then false
		else loop (i-1) next
	in
	if n < 0 then false
	else loop n x

let () =
	print_endline ("=== test with (( * ) 2) 2 (-1) ===");
	print_endline (string_of_bool (converges (( * ) 2) 2 (-1)));
	print_endline ("=== test with (( * ) 2) 2 5 ===");
	print_endline (string_of_bool (converges (( * ) 2) 2 5));
	print_endline ("=== test with (fun x -> x / 2) 2 3 ===");
	print_endline (string_of_bool (converges (fun x -> x / 2) 2 3));
	print_endline ("=== test with (fun x -> x / 2) 2 2 ===");
	print_endline (string_of_bool (converges (fun x -> x / 2) 2 2))
