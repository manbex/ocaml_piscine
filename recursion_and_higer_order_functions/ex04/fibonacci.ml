let fibonacci n =
	let rec loop x y i =
		if i == 0
		then x
		else (loop [@tailcall]) y (x+y) (i-1)
	in
	if n < 0
	then -1
	else loop 0 1 n

(*
let rec fibo n =
	if n < 0 then -1
	else if n <= 1 then n
	else ((fibo [@tailcall]) (n-2)) + ((fibo [@tailcall]) (n-1))
*)

let () =
	let test n =
		print_endline ("=== test with " ^ (string_of_int n) ^ " ===");
		print_endline (string_of_int (fibonacci n))
	in
	test (-42);
	test 1;
	test 3;
	test 6
