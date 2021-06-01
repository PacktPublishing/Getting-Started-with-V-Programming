module main

fn demo() {
	ia := i8(2)
	ib := i16(2)
	ic := int(2)

	println('----type definitions----')
	println('variable ia is of type: ${typeof(ia).name}')
	println('variable ib is of type: ${typeof(ib).name}')
	println('variable ic is of type: ${typeof(ic).name}')
	println('')
	iaa := ia + ia // i8 with i8 results i8
	ibb := ib + ib // i16 with i16 results i16
	icc := ic + ic // int with int results int
	println('----mixing types----')
	println('variable iaa is of type: ${typeof(iaa).name}, after adding type ${typeof(ia).name} with itself')
	println('variable ibb is of type: ${typeof(ibb).name}, after adding type ${typeof(ib).name} with itself')
	println('variable icc is of type: ${typeof(icc).name}, after adding type ${typeof(ic).name} with itself')
	println('')
	iab := ia + ib // i8 with i16 results in i16
	ibc := ib - ic // i16 with i32 results in i32
	println('----type promotion----')
	println('variable iab is promoted to type: ${typeof(iab).name}, after adding type ${typeof(ia).name} with ${typeof(ib).name}')
	println('variable ibc is promoted to type: ${typeof(ibc).name}, after subtracting type ${typeof(ib).name} with ${typeof(ic).name}')

	iba := ib / ia // the division of i16 and i8 types
	println('Variable iba is promoted to the higher data type ${typeof(iba).name} which is carried from ib of type ${typeof(ib).name} divided from variable ia of type ${typeof(ia).name}')

	fa := f32(2)

	fa_iba := fa + iba // fa is type of f32 and iba is of type i32
	println('Variable fa_iba is promoted to the higher data type ${typeof(fa_iba).name} which is carried from fa of type ${typeof(fa).name} when added with variable iba of type ${typeof(iba).name}')
}

fn main() {
	demo()
}
