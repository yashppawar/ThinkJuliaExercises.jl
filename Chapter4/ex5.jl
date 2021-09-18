## Exercise 4-5
## Make a copy of square and change the name to polygon. Add another parameter named n and modify the body so it draws an n-sided regular polygon.

## TIP
## The exterior angles of an n-sided regular polygon are 360/n degrees.
using ThinkJulia

println("Ans: ")

function polygon(turtle::Turtle, nsides::Int, len::Int = 100)
    angle = Int(360 / nsides)
    println("Angle: " * string(angle))

    for i in 1:nsides
        forward(turtle, len)
        turn(turtle, -angle)
    end
end

# (a) Try 1 
# @svg begin
#     polygon(Turtle(), 5)
# end

# (b) Try 2 
@svg begin
    polygon(Turtle(), 9)
end

println("End.")
