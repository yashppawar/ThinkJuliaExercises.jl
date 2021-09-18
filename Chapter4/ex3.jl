## Exercise 4-3
## Write a function call that passes t as an argument to square, and then run the macro again.
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

function drawSquare()
    turtle = Turtle()
    square(turtle)
end

drawSquare()

println("End.")
