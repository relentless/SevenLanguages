Person := Object clone
Person name ::= "John Doe"
Person age ::= 0
jim := Person clone
jim setName("Jim")
jim setAge(34)
sue := jim clone
sue setName("Suzan")
sue setAge(54)
ted := sue clone
ted setName("Ted")


people := list(jim, sue, ted)

people select(person, person age > 40) map(name) println