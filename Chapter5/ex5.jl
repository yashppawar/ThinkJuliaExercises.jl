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

## 1. What would happen if you called this function like this: recurse(-1, 0)?
println("Ans 1: ")

## 2. Write a docstring that explains everything someone would need to know in order to use this function (and nothing else).
println("Ans 2: ")

## The following exercises use the ThinkJulia module, described in Case Study: Interface Design:
println("End.")
