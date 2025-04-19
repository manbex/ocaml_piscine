let rec hfs_f n =
	if n < 0 then -1
	else if n == 0 then 1
	else n - (hfs_m (hfs_f (n-1)))

and hfs_m n =
	if n < 0 then -1
	else if n == 0 then 0
	else n - (hfs_f (hfs_m (n-1)))

let () =
	let test f n =
		let func = 
		if f == hfs_m then "hfs_m" else "hfs_f" in
		print_endline ("=== test with " ^ func ^ " and " ^ (string_of_int n) ^ " ===");
		print_endline (string_of_int (f n))
	in
	test hfs_m 0;
	test hfs_f 0;
	test hfs_m 4;
	test hfs_f 4
