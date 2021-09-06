ch := chan int{cap: 1}
ch <- 51
println('channel after push: $ch.str()')

println('popping value out of the channel and storing it in immutable variable x')
x := <-ch
println('value of x: $x')
println('channel after pop: $ch.str()')
