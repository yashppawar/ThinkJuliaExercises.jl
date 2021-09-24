## Exercise 6-2
## Use incremental development to write a function called hypotenuse that returns the length of the hypotenuse of a right triangle given the lengths of the other two legs as arguments. Record each stage of the development process as you go.
println("Ans: ")

function hypotenuse(a, b)
    a² = a ^ 2
    b² = b ^ 2
    c² = a² + b²
    c = √c²
    return c 
end 

println(hypotenuse(3, 4))

println("End.")
