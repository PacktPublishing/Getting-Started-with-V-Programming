module main

struct Note {
        id        int
        detail    string
        completed bool
}

fn main() {
        mut n := Note{
                id: 1001
                detail: 'get groceries'
        }
        println(n.completed) // un-assigned bool field will be false by default

        // Comparing using Relational operator >
        if n.id > 1000 { // comparison of note id of integer type to another integer evaluates to a boolean
                println('The note id is greater than 1000')
        } else {
                println('The note id is less than 1000')
        }

        // Comparing using Relational operator ==
        if n.detail == 'get groceries' {
                println('The note details about groceries')
        }

        // Comparing using Relational operator !=
        if n.detail != 'get dairy products' {
                println('The note does not details about dairy products')
        }
}
