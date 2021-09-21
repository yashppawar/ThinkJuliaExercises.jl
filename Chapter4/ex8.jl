## Exercise 4-8
## Enter the code in this chapter in a notebook.

## 1. Draw a stack diagram that shows the state of the program while executing circle(🐢, radius). 
## You can do the arithmetic by hand or add print statements to the code.
println("Ans 1: ")

println(" turtle --> Turtle")
println("     turtle --> Turtle")
println("     radius --> 100")
println("     circumference --> 628.318...")
println("     n --> 212")
println("     len --> 2")
println("         turtle --> Turtle")
println("         nsides --> 212")
println("         len --> 2")
println("         i --> 1:212")
println(" return")

## 2. The version of arc in Refactoring is not very accurate because the linear approximation of the circle 
## is always outside the true circle. As a result, the turtle ends up a few pixels away from the correct destination. 
## My solution shows a way to reduce the effect of this error. Read the code and see if it makes sense to you. 
## If you draw a diagram, you might see how it works.
using ThinkJulia

function polyline(t, n, len, angle)
    for i in 1:n
        forward(t, len)
        turn(t, -angle)
    end
end

"""
arc(t, r, angle)

Draws an arc with the given radius and angle:

    t: turtle
    r: radius
    angle: angle subtended by the arc, in degrees
"""
function arc(t, r, angle)
    arc_len = 2 * π * r * abs(angle) / 360
    n = trunc(arc_len / 4) + 3
    step_len = arc_len / n
    step_angle = angle / n

    # making a slight left turn before starting reduces
    # the error caused by the linear approximation of the arc
    turn(t, -step_angle/2)
    polyline(t, n, step_len, step_angle)
    turn(t, step_angle/2)
end

println("Ans 2: ")

@svg begin
    turtle = Turtle()
    # forward(turtle, 30)  # for checking the position of the turtle
    arc(turtle, 100, 125)
end

## 

println("End.")
