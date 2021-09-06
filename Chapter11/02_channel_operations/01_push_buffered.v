ch := chan int{cap: 1}
ch <- 51
println(ch.str())
