module main

import time

fn hot_water() string {
	println('Started Switch on Water heater: $time.now().hhmmss()')
	time.sleep(5 * time.second)
	println('Water heater indicates hot water ready! : $time.now().hhmmss()')
	return 'Hot water ready!'
}

fn brush_teeth() string {
	println('Started brushing:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End Brushing:  $time.now().hhmmss()')
	return 'Sparkling Teeth ready!'
}

fn select_clothes() string {
	println('Started choosing pair of clothes:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End choosing pair of clothes:  $time.now().hhmmss()')
	return 'Pair of clothes ready!'
}

fn main() {
	mut t := []thread string{}
	sw := time.new_stopwatch()
	t << go hot_water()
	t << go brush_teeth()
	t << go select_clothes()
	res := t.wait()
	println('Your pre bath morning chores took: $sw.elapsed().seconds() seconds')
	println('*** Type Check ***')
	println('Type of thread array of strings t: ${typeof(t).name}')
	println('Type of res: ${typeof(res).name}')
	println('*** Values returned by concurrently executed tasks ***')
	println(res)
}
