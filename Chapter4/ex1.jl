## Exercise 4-1

## 🐢 = Turtle()
## @svg begin
##     forward(🐢, 100)
##     turn(🐢, -90)
##     forward(🐢, 100)
## end

## Now modify the macro to draw a square. Don’t go on until you’ve got it working!
println("Ans: ")

using ThinkJulia

turtle = Turtle()

@svg begin
    forward(turtle, 100)
    turn(turtle, -90)
    forward(turtle, 100)
    turn(turtle, -90)
    forward(turtle, 100)
    turn(turtle, -90)
    forward(turtle, 100)
end

println("End.")
