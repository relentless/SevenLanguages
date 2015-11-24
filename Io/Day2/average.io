myAverage := method(nums, 
    if(nums size == 0, return 0)
    if(nums select(num, num type != "Number") size > 0, 
        Exception raise("Something in list not number")
    )
    nums average
)

"Average a list" println
myAverage(list(1,2,3,4,5)) println

"Average an empty list" println
myAverage(list()) println

"Average a list with a string" println
myAverage(list(1,2,"3")) println