MyThing := Object clone
MyThing value ::= 1 // ::= assignment creates slot, assigns value and creates setter
MyThing doStuff := method (writeln ("value is ", value))
MyThing setValue(5) // using the setter
MyThing doStuff
MyThing value = 10
MyThing doStuff

//MyThing anotherValue = 99 // can't assign to a slot which hasn't been created with := or ::=

MyThing valU2 := 3
//MyThing setvalU2(21) // can't do as didn't use ::= to create a setter
MyThing valU2 = 99
