module main

fn receiver(ch chan int) {
	println('Received value from the channel ${<-ch}')
}

fn main() {
	ch := chan int{}
	defer {
		ch.close()
	}
	go receiver(ch)
	ch <- 3
	println('End main')
}
