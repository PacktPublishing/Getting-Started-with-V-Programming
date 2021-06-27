fn increment_array_items(mut arr []int, inc int) {
	for mut i in arr {
		i += inc
	}
}

mut a := [5, 6]
increment_array_items(mut a, 100)
// Must specify mut keyword when sending value to mut arg of a function
println('a: $a')
