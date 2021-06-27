fn increment_array_items(arr []int, inc int) []int {
	mut tmp := arr.clone()
	for mut i in tmp {
		i += inc
	}
	return tmp
}

a := [5, 6]

res := increment_array_items(a, 100)

println('a: $a')
println('res: $res')
