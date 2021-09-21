## Exercise 4-6
## Write a function called circle that takes a turtle, t, and radius, r, as parameters and that draws an approximate circle by calling polygon with an appropriate length and number of sides. Test your function with a range of values of r.

## TIP
## Figure out the circumference of the circle and make sure that len * n == circumference.
using ThinkJulia

println("Ans: ")

function polygon(turtle::Turtle, nsides::Int, len::Int = 100)
    angle = (360 / nsides)

    for i in 1:nsides
        forward(turtle, len)
        turn(turtle, -angle)
    end
end

function circle(turtle::Turtle, radius::Int)
    circumference = 2 * π * radius
    n = Int(trunc(circumference ÷ 3) + 3) 
    len = Int(trunc(circumference / n))
    @show n, len
    polygon(turtle, n, len)
end

@svg begin
    turtle = Turtle()
    circle(turtle, 100)
end

println("End.")
