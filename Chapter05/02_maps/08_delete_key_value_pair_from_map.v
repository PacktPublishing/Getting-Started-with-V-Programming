mut student_1 := map{
	'english':     90
	'mathematics': 96
	'physics':     83
	'chemistry':   89
}

println('Key-Value pairs before deleting a key: $student_1.len')
student_1.delete('physics')
println('Key-Value pairs after deleting a key $student_1.len')
