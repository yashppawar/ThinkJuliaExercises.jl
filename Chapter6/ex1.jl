## Exercise 6-1
## Write a compare function takes two values, x and y, and returns 1 if x > y, 0 if x == y, and -1 if x < y.
println("Ans: ")

function compare(x, y)
    if x > y
        return 1
    elseif x < y
        return -1
    else
        return 0
    end 
end

println(compare(4, 6))
println(compare(90, 56))

println("End.")
