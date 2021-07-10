mut msg, i := 'Hello', 32
println(msg) // Hello
msg = 'Hi'
println(msg) // Hi
println(i) // 32
i = 2 // error: `i` is immutable, declare it with `mut` to make it mutable
