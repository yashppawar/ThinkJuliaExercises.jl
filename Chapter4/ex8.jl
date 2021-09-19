## Exercise 4-8
## Enter the code in this chapter in a notebook.

## 1. Draw a stack diagram that shows the state of the program while executing circle(🐢, radius). You can do the arithmetic by hand or add print statements to the code.
println("Ans 1: ")

## 2. The version of arc in Refactoring is not very accurate because the linear approximation of the circle is always outside the true circle. As a result, the turtle ends up a few pixels away from the correct destination. My solution shows a way to reduce the effect of this error. Read the code and see if it makes sense to you. If you draw a diagram, you might see how it works.

## """
## arc(t, r, angle)
## 
## Draws an arc with the given radius and angle:
## 
##     t: turtle
##     r: radius
##     angle: angle subtended by the arc, in degrees
## """
## function arc(t, r, angle)
##     arc_len = 2 * π * r * abs(angle) / 360
##     n = trunc(arc_len / 4) + 3
##     step_len = arc_len / n
##     step_angle = angle / n
## 
##     # making a slight left turn before starting reduces
##     # the error caused by the linear approximation of the arc
##     turn(t, -step_angle/2)
##     polyline(t, n, step_len, step_angle)
##     turn(t, step_angle/2)
## end
println("Ans 2: ")

println("End.")
