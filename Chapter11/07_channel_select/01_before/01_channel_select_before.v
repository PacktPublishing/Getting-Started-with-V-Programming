module main

fn process1(ch chan int) {
	for i in 1 .. 6 {
		sq := i * i
		println('process1: value being pushed on ch1: $sq')
		ch <- sq
	}
}

fn process2(ch chan string) {
	msg := 'hello from process 2'
	println('process2: value being pushed on ch2: $msg')
	ch <- msg
}

fn main() {
	ch1 := chan int{cap: 5} // buffered channel
	ch2 := chan string{} // unbuffered channel
	defer {
		ch1.close()
		ch2.close()
	}
	go process1(ch1)
	go process2(ch2)
	select {
		a := <-ch1 {
			println('main: value popped from ch1: $a')
		}
		b := <-ch2 {
			println('main: value popped from ch2: $b')
		}
	}
}
