x := 'hello'
ch := chan string{cap: 2}
for {
	status := ch.try_push(x)
	if status == .success {
		println('Channel length: $ch.len')
	} else {
		println('channel status: $status')
		break
	}
}
