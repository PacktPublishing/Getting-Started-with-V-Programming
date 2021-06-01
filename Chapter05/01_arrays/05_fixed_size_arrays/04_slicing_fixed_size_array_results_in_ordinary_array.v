mut fix := [4]int{}
fix[1] = 33
s := fix[1..]
println(s)
// [33, 0, 0]
println(typeof(s).name) // prints: []int
