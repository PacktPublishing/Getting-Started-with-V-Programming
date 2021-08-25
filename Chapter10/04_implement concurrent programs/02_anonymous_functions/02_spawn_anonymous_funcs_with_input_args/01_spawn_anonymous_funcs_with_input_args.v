module main

fn main() {
	mut t := []thread string{}
	for i in 1 .. 3 {
		t << go fn (i int, msg string) string {
			return 'iteration: $i, message: $msg'
		}(i, 'hello') // <- arguments must match list in the anonymous function definition
	}
	res := t.wait()
	println('Type of t: ${typeof(t).name}')
	println('Type of res: ${typeof(res).name}')
	println(res)
}
