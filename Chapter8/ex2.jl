## Exercise 8-2
## Modify the program to fix this error.
prefixes = "JKLMNOPQ"
suffix = "ack"

println("Ans.")

for letter in prefixes
    if letter == 'O' || letter == 'Q'
        letter *= 'u'
    end
    println(letter * suffix)
end

println("End.")
