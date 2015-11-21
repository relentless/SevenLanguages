(1 / 2) println
(1 / 0) println

Number oldDiv := Number getSlot("/")
Number / := method(divisor, if(divisor == 0, 0, self oldDiv(divisor)))

(1 / 2) println
(1 / 0) println