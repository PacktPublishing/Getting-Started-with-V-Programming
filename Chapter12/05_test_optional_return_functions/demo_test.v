fn greet(name string) ?string {
	if name != '' {
		return 'Hello $name!'
	}
	return error('name not provided')
}

fn test_greet_given_a_name() {
	exp := 'Hello Pavan!'
	assert greet('Pavan') or { err.msg } == exp
}

fn test_greet_propagates_error() ? {
	greet('') ?
}

fn test_greet_when_empty() {
	exp := 'name not provided'
	assert greet('') or { err.msg } == exp
}
