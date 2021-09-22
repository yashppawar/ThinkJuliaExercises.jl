## Exercise 5-4
## If you are given three sticks, you may or may not be able to arrange them in a triangle. For example, if one of the sticks is 12 inches long and the other two are one inch long, you will not be able to get the short sticks to meet in the middle. For any three lengths, there is a simple test to see if it is possible to form a triangle:

## TIP
## If any of the three lengths is greater than the sum of the other two, then you cannot form a triangle. Otherwise, you can. (If the sum of two lengths equals the third, they form what is called a “degenerate” triangle.)

## 1. Write a function named istriangle that takes three integers as arguments, and that prints either “Yes” or “No”, depending on whether you can or cannot form a triangle from sticks with the given lengths.
println("Ans 1: ")

function istriangle(a, b, c)
   return (((a + b) > c) && ((b + c) > a) && ((c + a) > b)) ? "Yes" : "No"
end

println(istriangle(13, 1, 1))
println(istriangle(4, 3, 5))

## 2. Write a function that prompts the user to input three stick lengths, converts them to integers, and uses istriangle to check whether sticks with the given lengths can form a triangle.
println("Ans 2: ")

function check_is_triangle()
    print("Enter the first side: ")
    a = parse(Int64, readline())
    print("Enter the second side: ")
    b = parse(Int64, readline())
    print("Enter the third side: ")
    c = parse(Int64, readline())

    println(istriangle(a, b, c))
end

check_is_triangle()

println("End.")
