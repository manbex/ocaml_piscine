let rec tak x y z =
	if x <= y then z
	else
		tak (tak (x-1) y z) (tak (y-1) z x) (tak (z-1) x y)

let () =
	let test x y z =
		print_endline ("=== test with " ^ (string_of_int x) ^ ", " ^ (string_of_int y) ^ ", " ^ (string_of_int z) ^ " ===");
		print_endline (string_of_int (tak x y z));
	in
	test 1 2 3;
	test 5 23 7;
	test 9 1 0;
	test 1 1 1;
	test 0 42 0;
	test 23498 98734 98776
