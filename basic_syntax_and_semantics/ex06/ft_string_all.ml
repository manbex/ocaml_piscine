let ft_string_all func str  =
	let rec loop i =
		let length = String.length str in
		if i < length then
			if func (String.get str i) == true
				then loop (i + 1)
				else false
		else true
	in
	loop 0
