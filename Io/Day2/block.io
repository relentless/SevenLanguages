Card := Object clone
Card showTargetSuit := method(suit println)
Card showSourceSuit := block(suit println)
jack := Card clone
jack suit := "Spades"
//ace := Card clone
//ace suit := "Hearts"

//suit := "Clubs"

jack showSourceSuit
jack showTargetSuit