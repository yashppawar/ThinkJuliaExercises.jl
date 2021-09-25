## Exercise 7-1
## Rewrite the function printn from Recursion using iteration instead of recursion.
println("Ans: ")

function printn(s, n::Int)
    while n > 0
        println(s)
        n -= 1
    end
end 

printn("Hello iteration!", 4)

println("End.")
