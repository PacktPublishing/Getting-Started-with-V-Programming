module main

import time

fn hot_water() {
	println('Started Switch on Water heater: $time.now().hhmmss()')
	time.sleep(5 * time.second)
	println('Water heater indicates hot water ready! : $time.now().hhmmss()')
}

fn brush_teeth() {
	println('Started brushing:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End Brushing:  $time.now().hhmmss()')
}

fn select_clothes() {
	println('Started choosing pair of clothes:  $time.now().hhmmss()')
	time.sleep(3 * time.second)
	println('End choosing pair of clothes:  $time.now().hhmmss()')
}

fn main() {
	mut t := []thread{}
	sw := time.new_stopwatch()
	t << go hot_water()
	t << go brush_teeth()
	t << go select_clothes()
	t.wait()
	println('Your pre bath morning chores took: $sw.elapsed().seconds() seconds')
}
