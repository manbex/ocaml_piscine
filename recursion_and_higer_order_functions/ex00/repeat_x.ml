let repeat_x n =
	let rec loop str count =
		if count == 0
		then str
		else loop (str ^ "x") (count - 1)
	in
	if n < 0
	then "Error"
	else loop "" n

let () =
	let test n =
		print_endline ("=== test with " ^ (string_of_int n) ^ " ===");
		print_endline (repeat_x n)
	in
	test 2;
	test 10;
	test 0;
	test (-2)
