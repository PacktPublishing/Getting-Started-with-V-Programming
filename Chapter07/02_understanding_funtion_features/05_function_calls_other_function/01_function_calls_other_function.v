fn greet(p string) string {
	return 'Hello, $p!'
}

fn welcome(p string) string {
	msg := 'Nice to meet you!'
	mut g := greet(p)
	g = g + ' $msg'
	return g
}

res := welcome('Visitor')
println(res)
