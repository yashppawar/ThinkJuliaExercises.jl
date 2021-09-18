## Exercise 4-4
## Add another parameter, named len, to square. Modify the body so length of the sides is len, and then modify the function call to provide a second argument. Run the macro again. Test with a range of values for len.
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

function drawSquare(len::Int)
    turtle = Turtle()
    square(turtle, len)
end

drawSquare(200)

println("End.")
