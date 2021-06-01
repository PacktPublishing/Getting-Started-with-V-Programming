fruits := ['apple', 'mango', 'water melon', 'musk melon']

fruits_starting_m := fruits.filter(fn (f string) bool {
	return f.starts_with('m')
})

println(fruits_starting_m)
