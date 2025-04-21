let leibniz_pi d =
	let fake_power p =  
		if (p mod 2) == 0
		then 1
		else (-1)
	in

	let ft_abs_float i =
		if i > 0.0
		then i
		else -.i
	in

	let operation i = 4.0 *. ((float_of_int (fake_power i)) /. (float_of_int ((2 * i) + 1)))
	in

	let pi = 4.0 *. (atan 1.0) in

	let rec loop i sum =
		(*
		print_endline (string_of_float (sum));
		*)
		if i > 0 && ft_abs_float (sum -. pi) < d
		then i
		else loop (i+1) (sum +. operation i)
	in

	if d < 0.0
	then -1
	else loop 0 0.0


let () =
	let test i =	
		print_endline ("=== test with " ^ (string_of_float i) ^ " ===");
		print_endline (string_of_int (leibniz_pi i))
	in
	(*
	print_endline (string_of_float (4.0 *. atan 1.0));
	*)

	test (-0.1);
	test 0.1;
	test 0.01;
	test 0.004;
	test 0.0006;
	test 0.00001
