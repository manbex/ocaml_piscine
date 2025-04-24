let crossover l1 l2 =
	let rec is_in_list lst element = match lst with
		| [] -> false
		| head::body ->
			if head == element
			then true
			else is_in_list body element
	in

	let rec loop input output = match input with
		| [] -> output
		| head::body -> 
			let new_output =
				if is_in_list output head then output
				else if is_in_list l2 head then output @ [head]
				else output
			in
			loop body new_output
	in

	if l1 == [] || l2 == []
	then []
	else loop l1 []


let () =
	let print_list f l =
		let print_space i =
			if i == 0
			then ()
			else print_string " "
		in
		let rec loop lst i = match lst with
			| [] -> ()
			| head::body -> begin print_space i; f (head); loop body (i+1) end
		in
		print_string "[";
		loop l 0;
		print_endline "]"
	in

	print_endline "=== test with ints [1 2 3 4 5 6 7 8 9] and [1 3 3 5 7 9 9] ===";
	print_list print_int (crossover [1; 2; 3; 4; 5; 6; 7; 8; 9] [1; 3; 3; 5; 7; 9; 9]);
	print_endline "=== test with strings [\"this\" \"is\" \"a\" \"test\"] and [\"test\" \"this\"] ===";
	print_list print_string (crossover ["this"; "is"; "a"; "test"] ["test"; "this"]);
	print_endline "=== test with chars [a b c d e] and [a e r g b] ===";
	print_list print_char (crossover ['a'; 'b'; 'c'; 'd'; 'e'] ['a'; 'e'; 'r'; 'g'; 'b']);
	print_endline "=== test with [] and [1 2 3 4] ===";
	print_list print_int (crossover [] [1; 2; 3; 4]);
	print_endline "=== test with [1 2 3 4] and [] ===";
	print_list print_int (crossover [1; 2; 3; 4] [])
