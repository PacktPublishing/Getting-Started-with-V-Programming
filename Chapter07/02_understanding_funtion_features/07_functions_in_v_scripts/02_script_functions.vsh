#!/usr/bin/env -S v run

fn log(msg string) {
	println(msg)
}

cnt := 2

for i in 0 .. cnt {
	log('iteration $i')
}
