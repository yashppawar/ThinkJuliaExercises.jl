## Exercise 5-7
## https://benlauwens.github.io/ThinkJulia.jl/latest/images/fig52.svg
## Figure 8. A Koch curve

## The Koch curve is a fractal that looks something like A Koch curve. To draw a Koch curve with length x, all you have to do is

## 1. Draw a Koch curve with length x3.
## 2. Turn left 60 degrees.
## 3. Draw a Koch curve with length x3.
## 4. Turn right 120 degrees.
## 5. Draw a Koch curve with length x3.
## 6. Turn left 60 degrees.
## 7. Draw a Koch curve with length x3.

## The exception is if x is less than 3: in that case, you can just draw a straight line with length x.

## 1. Write a function called koch that takes a turtle and a length as parameters, and that uses the turtle to draw a Koch curve with the given length.
println("Ans 1: ")

## 2. Write a function called snowflake that draws three Koch curves to make the outline of a snowflake.
println("Ans 2: ")

## 3. The Koch curve can be generalized in several ways. See https://en.wikipedia.org/wiki/Koch_snowflake for examples and implement your favorite.
println("Ans 3: ")

println("End.")
