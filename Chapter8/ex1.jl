## Exercise 8-1
## Write a function that takes a string as an argument and displays the letters backward, one per line.
println("Ans: ")

function reverse(s::AbstractString)
    s = s[end: -1: 1]

    for i in s
        println(i)
    end
end

reverse("Hello world")

println("End.")
