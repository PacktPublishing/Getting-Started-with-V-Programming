mut sports := ['cricket', 'hockey', 'football']
println(sports.len)
// Length of sports array
println(sports.cap)
// Capacity of sports array
println('----Deleting football----')
sports.delete(2)
// deleting football
println('Length of sports array: $sports.len')
println('Capacity of sports array: $sports.cap')

println('----Adding volleyball and baseball----')

sports << ['volleyball', 'baseball']
println(sports)
println('Length of sports array: $sports.len')
println('Capacity of sports array: $sports.cap')
