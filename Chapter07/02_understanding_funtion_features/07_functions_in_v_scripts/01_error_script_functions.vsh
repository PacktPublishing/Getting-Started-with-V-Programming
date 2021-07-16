#!/usr/local/bin/v run

cnt := 2

for i in 0 .. cnt {
	log('iteration $i')
}

fn log(msg string) {
	println(msg)
}
