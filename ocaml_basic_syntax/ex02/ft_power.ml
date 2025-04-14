let rec ft_power x y =
	if y > 0
	then x * (ft_power x (y - 1))
	else 1
