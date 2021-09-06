b := chan string{cap: 2}
b <- 'hello'
println('capacity: $b.cap')
println('length: $b.len')
println('closed: $b.closed')
