let ft_is_palindrome str =
	let rec loop i j =
		if i < j then
			if String.get str i == String.get str (j - 1)
				then loop (i + 1) (j - 1)
				else false
		else
			true
	in
	loop 0 (String.length str)
