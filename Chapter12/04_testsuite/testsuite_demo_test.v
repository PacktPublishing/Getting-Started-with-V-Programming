import os

fn testsuite_begin() {
	os.setenv('foo', 'bar', true)
	println('About to start executing all tests')
}

fn test_env_foo_has_value_bar() {
	println('Executing test')

	// arrange
	inp := 'foo'
	expected := 'bar'

	// act
	actual := os.getenv(inp)

	// assert
	assert actual == expected
}

fn testsuite_end() {
	os.unsetenv('foo')
	println('Finished executing all tests')
}
