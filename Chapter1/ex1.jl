## Exercise 1-1
## Whenever you are experimenting with a new feature, you should try to make mistakes. For example, in the “Hello, World!” program, what happens if you leave out one of the quotation marks? What if you leave out both? What if you spell println wrong?

## This kind of experiment helps you remember what you read; it also helps when you are programming, because you get to know what the error messages mean. It is better to make mistakes now and on purpose rather than later and accidentally.

## 1. In a print statement, what happens if you leave out one of the parentheses, or both?
println("Ans 1:")
# println("wello"  # error, syntax incomplete
# println "wello"  # error syntax

## 2. If you are trying to print a string, what happens if you leave out one of the quotation marks, or both?
println("Ans 2:")
# println("wello)  # error, syntax incomplete
# println(wello)  # error, UndefVarError

## 3. You can use a minus sign to make a negative number like -2. What happens if you put a plus sign before a number? What about 2++2?
println("Ans 3:")
println(-2) # works
println(2 + +2) # works
# println(2++2)  # Error, UndefVarError

## 4. In math notation, leading zeros are okay, as in 02. What happens if you try this in Julia?
println("Ans 4:")
println(02) # works
println(02.)  # 2.0
println(2.0000000)

## 5. What happens if you have two values with no operator between them?
println("Ans 5:")
# println(3 5)  # error, syntax, missing , or ) in argument list

println("End.")
