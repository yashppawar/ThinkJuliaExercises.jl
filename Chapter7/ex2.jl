## Exercise 7-2
## Copy the loop from Square Roots and encapsulate it in a function called mysqrt that takes a as a parameter, chooses a reasonable value of x, and returns an estimate of the square root of a.

function mysqrt(a, x)
    a = float(a)
    while true
        y = (x + a/x) / 2
        if y == x
            break
        end
        x = y
    end
    return x
end

## To test it, write a function named testsquareroot that prints a table like this:
# see ex 7-2 in book
println("Ans: ")

function rightjustify(string::String, chr)
    if chr - length(string) > 0 
        return ' ' ^ (chr - length(string)) * string
    end 
    return string
end 

function testsquareroot()
    println("a   mysqrt             sqrt               diff")
    println("-   ------             ----               ----")
    for i in 1:10
        i = float(i)
        root = sqrt(i)
        root_my = mysqrt(i, i/2)
        println(
            string(i) * " " * 
            rightjustify(string(root_my), 18) * 
            " " * 
            rightjustify(string(root), 18) * " " * 
            string(abs(root_my - root)))
    end
end

testsquareroot()

println("End.")
