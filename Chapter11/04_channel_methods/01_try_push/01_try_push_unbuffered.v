v := 'hi'
ch := chan string{} // unbuffered channel
res := ch.try_push(v)
println(res) // not_ready
