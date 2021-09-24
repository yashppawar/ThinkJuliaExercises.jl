## Exercise 6-8
## The greatest common divisor (GCD) of a and b is the largest number that divides both of them with no remainder.

## One way to find the GCD of two numbers is based on the observation that if r is the remainder when a is divided by b, then gcd(a, b) = gcd(b, r). As a base case, we can use gcd(a, 0) = a.

## Write a function called gcd that takes parameters a and b and returns their greatest common divisor.
println("Ans: ")

function gcd(a, b)
    remainder = a % b
    if remainder == 0
        return b
    end 
    return gcd(b, remainder)
end

println(gcd(210, 55))
println(gcd(12576, 4052))
println(gcd(4, 3))

println("End.")
