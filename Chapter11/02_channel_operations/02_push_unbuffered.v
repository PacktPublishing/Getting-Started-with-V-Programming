ch := chan int{}
ch <- 51
println(ch) // doesn't prints, due to blocking behavior of unbuffered channels
