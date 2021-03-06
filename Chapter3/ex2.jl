## Exercise 3-2
## Write a function named rightjustify that takes a string named s as a parameter and prints the string with enough leading spaces so that the last letter of the string is in column 70 of the display.
println("Ans.")

function rightjustify(string::String)
    return ' ' ^ (70 - length(string)) * string
end 

println(rightjustify("Monty"))

println("End.")
