## Exercise 3-3
## A function object is a value you can assign to a variable or pass as an argument. For example, dotwice is a function that takes a function object as an argument and calls it twice:

## function dotwice(f)
##    f()
##    f()
## end

## Here’s an example that uses dotwice to call a function named printspam twice.

## function printspam()
##    println("spam")
## end

## dotwice(printspam)

## 1. Type this example into a script and test it.
println("Ans 1:")
function dotwice(func)
    func()
    func()
end

function printspam()
    println("Spam")
end

dotwice(printspam)

## 2. Modify dotwice so that it takes two arguments, a function object and a value, and calls the function twice, passing the value as an argument.
println("Ans 2:")
function dotwice(func, arg)
    func(arg)
    func(arg)
end

# extra
function dotwice(func, args...)
    func(args...)
    func(args...)
end

dotwice(println, "dotwice")

## 3. Copy the definition of printtwice from earlier in this chapter to your script.
println("Ans 3:")
function printtwice(bruce)
    println(bruce)
    println(bruce)
end 

## 4. Use the modified version of dotwice to call printtwice twice, passing "spam" as an argument.
println("Ans 4:")
dotwice(printtwice, "spam")

## 5. Define a new function called dofour that takes a function object and a value and calls the function four times, passing the value as a parameter. There should be only two statements in the body of this function, not four.
println("Ans 5:")
function dofour(func, arg)
    dotwice(func, arg)
    dotwice(func, arg)
end

# extra
function dofour(func, args...)
    dotwice(func, args...)
    dotwice(func, args...)
end

dofour(printtwice, "spam")

println("End.")
