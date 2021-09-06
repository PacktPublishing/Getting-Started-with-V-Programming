module main

fn sender(ch chan int) {
	val := 3
	println('Sending value: $val in the channel')
	ch <- val
	println('sent value: $val in the channel')
}

fn receiver(ch chan int) {
	println('Received value from the channel ${<-ch}')
}

fn main() {
	ch := chan int{cap: 1}
	defer {
		ch.close()
	}
	t := go receiver(ch)
	go sender(ch)

	t.wait()
	println('End main')
}
