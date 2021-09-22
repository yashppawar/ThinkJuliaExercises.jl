## Exercise 5-3
## Fermat’s Last Theorem says that there are no positive integers a, b, and c such that

## a^n+b^n=c^n
## for any value of n greater than 2.

## Write a function named checkfermat that takes four parameters—a, b, c and n—and checks to see if Fermat’s theorem holds. If n is greater than 2 and a^n + b^n == c^n the program should print, “Holy smokes, Fermat was wrong!” Otherwise the program should print, “No, that doesn’t work.”
println("Ans 1: ")

function check_fermats_theorem(a::Int, b::Int, c::Int, n::Int)
    if a^n + b^n == c^n && n > 2
        println("Holy smokes, Fermat was wrong!")
    else
        println("No, that doesn’t work.")
    end 
end

check_fermats_theorem(3, 5, 3, 3)

## 2. Write a function that prompts the user to input values for a, b, c and n, converts them to integers, and uses checkfermat to check whether they violate Fermat’s theorem.
println("Ans 2: ")

function check_fermats_theorem2()
    print("Enter value for a: ")
    a = parse(Int64, readline())
    print("Enter value for b: ")
    b = parse(Int64, readline())
    print("Enter value for c: ")
    c = parse(Int64, readline())
    print("Enter value for n: ")
    n = parse(Int64, readline())

    check_fermats_theorem(a, b, c, n)
end

check_fermats_theorem2()

println("End.")
