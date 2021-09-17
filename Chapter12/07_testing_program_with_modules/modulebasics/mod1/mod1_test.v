module mod1

fn test_hello() {
	// arrange
	exp := 'Hello from mod1!'

	// act
	act := hello()

	// assert
	assert act == exp
}
