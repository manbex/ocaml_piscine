let ft_rot_n n str =
	let rot c =
		let base_value =
		if c >= 'a' && c <= 'z'
			then int_of_char 'a'
		else if c >= 'A' && c <= 'Z'
			then int_of_char 'A'
		else
			-1
		in
		if base_value > 0 then
			let c_value = int_of_char c in
			let diff = (c_value + n - base_value) mod 26 in
			char_of_int (base_value + diff)
		else c
	in
	String.map rot str
