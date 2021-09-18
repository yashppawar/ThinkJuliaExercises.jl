## Exercise 4-2
## Write a function called square that takes a parameter named t, which is a turtle. It should use the turtle to draw a square.
using ThinkJulia

println("Ans: ")

function square(turtle::Turtle, distance::Int = 100)
    @svg begin
        for i in 1:3
            forward(turtle, distance)
            turn(turtle, -90)
        end
        
        forward(turtle, distance)
    end
end

turtle = Turtle()
square(turtle)

println("End.")
