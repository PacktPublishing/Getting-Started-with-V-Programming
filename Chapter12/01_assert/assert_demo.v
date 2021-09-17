module main

fn main() {
	println('1st assert')
	msg := 'hello there!'
	assert msg.contains('hello') // true
	println('2nd assert')
	assert 'apple' == 'orange' // stops execution
	println('done')
}
