let ackermann x y =
	let rec loop m n =
		if m == 0 then n + 1
		else if n == 0 then loop (m-1) 1
		else loop (m-1) (loop m (n-1))
	in
	if x < 0 || y < 0
	then (-1)
	else loop x y

let () =
	let test m n =
		print_endline ("=== test with " ^ (string_of_int m) ^ " and " ^ (string_of_int n) ^" ===");
		print_endline (string_of_int (ackermann m n));
	in
	test (-1) 7;
	test 0 0;
	test 2 3;
	test 4 1
