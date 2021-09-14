## Exercise 2-2
## Repeating my advice from the previous chapter, whenever you learn a new feature, you should try it out in interactive mode and make errors on purpose to see what goes wrong.

## 1. We’ve seen that n = 42 is legal. What about 42 = n?
println("Ans 1:")
# 42 = n  # Error: syntax: invalid assignment location "42"

## 2. How about x = y = 1?
println("Ans 2:")
x = y = 1  # works fine x and y get assigned 1

## 3. In some languages every statement ends with a semi-colon, ;. What happens if you put a semi-colon at the end of a Julia statement?
println("Ans 3:")
x = 17;  # when in interactive environment it does not print the value, in script no change.

## 4. What if you put a period at the end of a statement?
println("Ans 4:")
x + 6.  # working fine
# x + y.  # Error syntax incomplete OR Load Error type Int64 has no field println

## In math notation you can multiply x and y like this: x y. What happens if you try that in Julia? What about 5x?
println("Ans 5:")
x = 3
y = 4
println(5x)  # works, 'yey
# println(xy)  # error UndefVarError, as xy will be different from x * y
# println(x y)  # error syntax, missing `,` or `)`
println(x * y)

println("End.")
