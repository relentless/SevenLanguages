Robot := Object clone
Robot power ::= 0
Robot weapons ::= list()

Robot fireAt := method(target, writeln( "Firing my ", weapons at(0), " at ", target))

LazerBot := Robot clone
LazerBot setWeapons(list( "UV Blinder", "Standard Lazer"))

killBot3000 := LazerBot clone
killBot3000 power = 78

writeln("killBot3000 is a ", killBot3000 type)
writeln("proto of killBot3000 is ", killBot3000 proto)

writeln("LazerBot is a ", LazerBot type)
writeln("proto of LazerBot is ", LazerBot proto)

writeln("Robot is a ", Robot type)
writeln("proto of Robot is ", Robot proto)

killBot3000 fireAt("Meatbag Jim")