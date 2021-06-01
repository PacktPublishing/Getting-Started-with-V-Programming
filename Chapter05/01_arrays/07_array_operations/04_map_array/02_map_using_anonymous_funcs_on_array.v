colors := ['red', 'blue', 'green', 'white', 'black']

colors_with_letter_e := colors.map(fn (c string) int {
	if c.contains('e') { return 1
	 } else { return 0
	 }
})

println(colors_with_letter_e)
