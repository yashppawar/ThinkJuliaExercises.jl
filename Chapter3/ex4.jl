## Exercise 3-4
## Write a function printgrid that draws a grid like the following:

## julia> printgrid()
## + - - - - + - - - - +
## |         |         |
## |         |         |
## |         |         |
## |         |         |
## + - - - - + - - - - +
## |         |         |
## |         |         |
## |         |         |
## |         |         |
## + - - - - + - - - - +
println("Ans 1:")

function printhline(col::Int = 2)
    println("+ - - - - " ^ col * "+")
end

function printbox(col::Int = 2)
    row = "|         " ^ col * "|"
    # use loop for iteration
    for i in 1:4
        println(row)
    end
end

function printgrid(side::Int = 2)
    for i in 1:side
        printhline(side)
        printbox(side)
    end

    printhline(side)
end

printgrid()
## Write a function that draws a similar grid with four rows and four columns.
println("Ans 2:")

printgrid(4)

println("End.")
