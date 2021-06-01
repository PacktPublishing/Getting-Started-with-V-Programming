module main

fn main() {
        val := i8(1)

        bits := sizeof(val) * 8

        println('Performing left shift using << Operator')

        for i in 0 .. bits {
                after_shift := val << i
                println('$val << $i = $after_shift \/\/ type after shift operation: ${typeof(after_shift).name}')
        }
}
