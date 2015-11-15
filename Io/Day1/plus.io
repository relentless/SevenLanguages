write(1 + 1)
//write(1 + "one")

if(1, write(1 + 1), write(1 + "one")) // io seems to be dynamic as the invalid code in the false part is ignored
// (although this could also be the case if shortcuts were used in if statements)

myObj := Object clone
myObj doValidThing := method( write(1 + 1) )
myObj doInvalidThing := method( write(1 + "one") )	
myObj doValidThing
//myObj doInvalidThing

// It also seems to be dynamic because adding the invalid method doesn't cause problems.