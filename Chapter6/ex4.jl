## Exercise 6-4
## Draw a stack diagram for the following program. What does the program print?

function b(z)
    prod = a(z, z)
    println(z, " ", prod)
    prod
end

function a(x, y)
    x = x + 1
    x * y
end

function c(x, y, z)
    total = x + y + z
    square = b(total)^2
    square
end

x = 1
y = x + 1
println(c(x, y+3, x+y))

println("Ans: ")

println(" ~~ Stack Diagram ~~")
println(" x --> 1")
println(" y --> 2")
println(" func c")
println("   x --> 1")
println("   y --> 5")
println("   z --> 3")
println("   total --> 9")
println("   func b")
println("     z --> 9")
println("     func a")
println("       x --> 9")
println("       y --> 9")
println("       x --> 10")
println("     prod --> 90")
println("   square --> 8100")

println("End.")
