Reflector := Object clone
Reflector showTarget := method(writeln("Target is ", call target))
Reflector showSender := method(writeln("Sender is ", call sender))
Reflector showCall := method(writeln("Call is ", call slotNames))
//Reflector showArguments := method(writeln("Arguments are ", call arguments))

Reflector showTarget
Reflector showSender
Reflector showCall
//Reflector showArguments("hi mum")

Postman := Object clone
Postman sendMail := method(message, Reflector showSender)

Postman sendMail