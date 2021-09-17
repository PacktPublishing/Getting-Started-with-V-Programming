module main

fn test_greet() {
	// Arrange
	name := 'Bob'
	exp_msg := 'Hello Bob!'

	// Act
	act_msg := greet(name)

	// Assert
	assert act_msg == exp_msg
	assert act_msg.contains(name)
}
