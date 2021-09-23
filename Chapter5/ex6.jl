## The following exercises use the ThinkJulia module, described in Case Study: Interface Design:
## Exercise 5-6
## Read the following function and see if you can figure out what it does (see the examples in Case Study: Interface Design). Then run it and see if you got it right.
using ThinkJulia

function draw(t, length, n)
    if n == 0
        return
    end
    angle = 50
    forward(t, length*n)
    turn(t, -angle)
    draw(t, length, n-1)
    turn(t, 2*angle)
    draw(t, length, n-1)
    turn(t, -angle)
    forward(t, -length*n)
end

println("Ans: ")

# Ans: It should recursive pattern
turtle = Turtle()

@svg begin
    draw(turtle, 10, 5)
end

println("End.")
