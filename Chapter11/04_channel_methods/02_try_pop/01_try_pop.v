ch := chan int{cap: 1}
mut x, mut y := 0, 0
ch <- 101
mut status := ch.try_pop(mut x)
println('try pop resulted in status: $status, Value of x: $x')
status = ch.try_pop(mut y)
println('try pop resulted in status: $status, Value of y: $y')
