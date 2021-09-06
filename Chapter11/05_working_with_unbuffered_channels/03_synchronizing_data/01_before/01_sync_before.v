module main

const (
	cnt = 4
)

fn sender(ch chan int) {
	for i in 0 .. cnt {
		ch <- i // since the push operation is a void expression, this cannot be placed in a println
		println('Sent $i into the channel')
	}
}

fn receiver(ch chan int) {
	println('Received value from the channel ${<-ch}')
}

fn main() {
	ch := chan int{}
	defer {
		ch.close()
	}
	t := go receiver(ch)
	go sender(ch)
	t.wait()
	println('End main')
}
