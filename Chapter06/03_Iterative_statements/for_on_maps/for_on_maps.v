module main

fn main() {
	lottery := {
		'First':       1000
		'Second':      700
		'Consolation': 200
	}

	for k, v in lottery {
		println('$k prize lottery amount: $v')
	}
}
