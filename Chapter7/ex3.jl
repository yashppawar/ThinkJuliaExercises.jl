## Exercise 7-3
## The built-in function Meta.parse takes a string and transforms it into an expression. This expression can be evaluated in Julia with the function Core.eval. For example:

## julia> expr = Meta.parse("1+2*3")
## :(1 + 2 * 3)
## julia> eval(expr)
## 7
## julia> expr = Meta.parse("sqrt(π)")
## :(sqrt(π))
## julia> eval(expr)
## 1.7724538509055159

## Write a function called evalloop that iteratively prompts the user, takes the resulting input and evaluates it using eval, and prints the result. It should continue until the user enters done, and then return the value of the last expression it evaluated.
println("Ans: ")

function evalloop()
    while true
        print("eval>> ")
        expr = readline()
        if lowercase(expr) == "done"
            break
        end
        expr = Meta.parse(expr)
        println(eval(expr))
    end
end

evalloop()

println("End.")
