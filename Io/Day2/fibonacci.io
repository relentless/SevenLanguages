// 1 1 2 3 5 8 13 21 34

fibRec := method(n, if(n<3, 1, fibRec (n-1) + fibRec (n-2)))
writeln("Fibonacci recursive: number 8 = ", fibRec(8))

fibProc := method(n, 
    n1 := n2 := 1
    count := 2
    while(count < n,
        previousN2 := n2
        n2 = n1 + n2
        n1 = previousN2
        count = count + 1
    )
    n2
)
fibProc(1) println
fibProc(2) println
fibProc(3) println
writeln("Fibonacci procedural: number 9 = ", fibProc(9))
    