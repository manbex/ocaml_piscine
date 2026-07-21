let repeat_string ?(str="x") n =
	let rec loop res count =
		if count = 0
		then res
		else loop (res ^ str) (count - 1)
	in

	if n < 0
	then "Error"
	else loop "" n


let () =
	let test ?(str="x") n =
		if str = "x" then
			begin
			print_endline ("=== test with " ^ (string_of_int n) ^ " ===");
			print_endline (repeat_string ~str:str n)
			end

		else
			begin
			print_endline ("=== test with \"" ^ str ^ "\" and " ^ (string_of_int n) ^ " ===");
			print_endline (repeat_string ~str:str n)
			end
	in
	test (-1);
	test 0;
	test ~str:"Toto" 1;
	test 2;
	test ~str:"a" 5;
	test ~str:"what" 3
