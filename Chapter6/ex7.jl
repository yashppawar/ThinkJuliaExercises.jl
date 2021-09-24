## Exercise 6-7
## A number, a, is a power of b if it is divisible by b and a/b is a power of b. Write a function called ispower that takes parameters a and b and returns true if a is a power of b.

## TIP
## You will have to think about the base case.
println("Ans: ")

function ispower(a, b)
    if a == b
        return true
    end

    if a % b == 0 && ispower(a / b, b)
        return true
    end 

    return false
end

println(ispower(1000, 10))
println(ispower(343, 7))
println(ispower(31, 2))

println("End.")
