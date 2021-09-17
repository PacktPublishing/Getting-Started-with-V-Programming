module main

import mod1

fn test_hello() {
	// arrange
	exp := 'Hello from mod1!'

	// act
	act := mod1.hello()

	// assert
	assert act == exp
	assert mod1.hello().contains('Hello')
}
