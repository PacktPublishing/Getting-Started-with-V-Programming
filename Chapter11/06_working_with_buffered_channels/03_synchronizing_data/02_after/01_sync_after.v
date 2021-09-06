module main

const (
	count = 4
)

fn sender(ch chan int) {
	for i in 0 .. count {
		ch <- i
		println('sent value: $i in the channel')
	}
}

fn receiver(ch chan int) {
	for _ in 0 .. count {
		println('Received value from the channel ${<-ch}')
	}
}

fn main() {
	ch := chan int{cap: 2}
	defer {
		ch.close()
	}
	t := go receiver(ch)
	go sender(ch)

	t.wait()
	println('End main')
}
