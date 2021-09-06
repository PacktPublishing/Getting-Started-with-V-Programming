module main

import time

fn process1(ch chan int) {
	for i in 1 .. 6 {
		sq := i * i
		time.sleep(3 * time.second)
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
	mut sec := 0
	for {
		select {
			a := <-ch1 {
				sec = 0
				println('main: value popped from ch1: $a')
			}
			b := <-ch2 {
				sec = 0
				println('main: value popped from ch2: $b')
			}
			2 * time.second {
				// this case executes for every 2 seconds of inactivity by any other channels in this select statement
				sec = sec + 2
				println('main: more than ${sec}s passed without a channel being ready')
				if sec >= 6 {
					println('exiting out of select after $sec seconds of inactivity amongst channels')
					break
				}
			}
		}
	}
	println('done')
}
