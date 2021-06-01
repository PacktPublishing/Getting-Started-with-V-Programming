module main

fn main() {
        a := i8(6)
        b := i8(2)

        // bitwise AND operation of two integers using & operator
        b_and := a & b

        // bitwise OR operation of two integers using | operator
        b_or := a | b

        // bitwise XOR operation of two integers using ^ operator
        b_xor := a ^ b

        // bitwise NOT operation of an integer using ~ operator
        not_a := ~a // Not operation yields value equals to -(a+1)

        println('Bitwise AND: $a & $b = $b_and')
        println('Bitwise OR: $a | $b = $b_or')
        println('Bitwise XOR: $a ^ $b = $b_xor')
        println('Bitwise NOT: ~$a = $not_a')
}
