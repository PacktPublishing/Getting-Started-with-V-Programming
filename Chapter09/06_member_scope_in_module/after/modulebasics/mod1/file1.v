module mod1

pub fn hello() {
	println('Hello from mod1!')
	// hello2 is not a public but accessible within mod1
	hello2()
}
