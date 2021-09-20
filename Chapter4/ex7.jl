## Exercise 4-7
## Make a more general version of circle called arc that takes an additional parameter angle, which determines what fraction of a circle to draw. angle is in units of degrees, so when angle = 360, arc should draw a complete circle.
using ThinkJulia

println("Ans: ")

function arc(turtle::Turtle, radius::Int, angle)
    len = 2 * π * radius * angle / 360  # finding the length of the arc 2πr * a/360
    n = Int(trunc(len) / 3) + 1 # number of times the turtle will rotate and draw 

    len /= n
    angle /= n 

    for i in 1:n
        forward(turtle, len)
        turn(turtle, -angle)
    end
end

@svg begin 
    arc(Turtle(), 200, 270)
end

println("End.")
