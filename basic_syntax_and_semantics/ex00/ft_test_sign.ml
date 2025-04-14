let ft_test_sign n =
	let compare n =
		if n < 0
		then "negative"
		else "positive" in
	print_endline (compare n)
