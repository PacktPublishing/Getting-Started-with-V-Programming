ch := chan int{}
ch <- 51
println(ch.str())
// doesn't prints, due to blocking behavior of unbuffered channels
