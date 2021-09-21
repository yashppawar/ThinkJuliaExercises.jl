## Exercise 5-1
## As an exercise, draw a stack diagram for printn called with s = "Hello" and n = 2. Then write a function called do_n that takes a function object and a number, n, as arguments, and that calls the given function n times.
println("Ans: ")

println(" n --> 2")
println(" n --> 1")
println(" n --> 0")

function printhello()
    println("Hello")
end 

function do_n(func, n)
    if n <= 0
        return
    end

    func()
    do_n(func, n - 1)
end 

do_n(printhello, 3)

println("End.")
