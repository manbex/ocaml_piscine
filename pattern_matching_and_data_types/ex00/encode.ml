let encode l =
	let rec loop input output count previous = match input with
		| [] -> output @ [(count, previous)]
		| head::body ->
			if head == previous
			then loop body output (count+1) head
			else loop body (output @ [(count, previous)]) 1 head
	in

	match l with
		| [] -> []
		| head::body -> loop body [] 1 head


let () =
	let print_tuple f t = match t with
		| (a, b) ->
			print_int a;
			f b;
			print_char ' '
	in

	let print_list f l =
		let rec loop lst = match lst with
			| [] -> ()
			| head::body -> begin print_tuple f (head); loop body end
		in
		loop l;
		print_endline ""
	in

	print_endline "=== test with chars a a a b b b c d d d d ===";
	print_list print_char (encode ['a'; 'a'; 'a'; 'b'; 'b'; 'b'; 'c'; 'd'; 'd'; 'd'; 'd']);
	print_endline "=== test with ints 1 1 1 2 2 2 3 3 3 3 3 3 4 5 5 5 ===";
	print_list print_int (encode [1; 1; 1; 2; 2; 2; 3; 3; 3; 3; 3; 3; 4; 5; 5; 5]);
	print_endline "=== test with strings \"lol\" \"lol\" \"lol\" \"coucou\" ===";
	print_list print_string (encode ["lol"; "lol"; "lol"; "coucou"]);
	print_endline "=== test with empty list [] ===";
	print_list print_int (encode [])
