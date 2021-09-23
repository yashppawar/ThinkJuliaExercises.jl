## Exercise 5-5
## What is the output of the following program? Draw a stack diagram that shows the state of the program when it prints the result.

function recurse(n, s)
    if n == 0
        println(s)
    else
        recurse(n-1, n+s)
    end
end

## recurse(3, 0)
println("Ans 0: ")

println(" n --> 3. s --> 0")
println(" n --> 2. s --> 3")
println(" n --> 1. s --> 5")
println(" n --> 0. s --> 6")

## 1. What would happen if you called this function like this: recurse(-1, 0)?
println("Ans 1: ")

println("if the function was called like this: recurse(-1, 0), it would get stuck in infinite recursion")

## 2. Write a docstring that explains everything someone would need to know in order to use this function (and nothing else).
println("Ans 2: ")

"""
recurse(n::Int, s::Number) -> Nothing 

recurses for n number of times and sums it up 
adding initial value of sum (s).

@params n: positive integer
@params s: number
"""
function recurse(n, s)
    if n == 0
        println(s)
    else
        recurse(n-1, n+s)
    end
end

recurse(9, 2)

## The following exercises use the ThinkJulia module, described in Case Study: Interface Design:
println("End.")
