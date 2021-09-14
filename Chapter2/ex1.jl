## Exercise 2-1
## To check your understanding, type the following statements in the Julia REPL and see what they do:
## in repl
# 5  # >> 5
# x = 5  # >> 5
# x + 1  # >> 6

# Now put the same statements in a script and run it. What is the output? Modify the script by transforming each expression into a print statement and then run it again.
println("Ans: ")
5
x = 5
x + 1
# no output, lets try using print.

println(5)
# println(x = 5)  # error, LoadError: MethodError
x = 5
println(x)
println(x + 1)

println("End.")
