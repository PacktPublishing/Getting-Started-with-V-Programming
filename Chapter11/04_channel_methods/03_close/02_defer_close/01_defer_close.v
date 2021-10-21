module main

fn main() {
	ch := chan int{cap: 2}
	defer {
		ch.close()
	} // Deferred execution to Close channel

	// push using arrow operator: <-
	ch <- 123 // Push 1st element into the channel
	ch <- 222 // Push 2nd element into the channel
	println(<-ch) // pop using: <- First in is the first to out. So prints 123

	// try_push will result .closed
	new_val := 999
	status := ch.try_push(new_val)
	println('try_push on a closed channel resulted in status: $status')

	// We still have one more element to pop
	println(<-ch) // 222
}
