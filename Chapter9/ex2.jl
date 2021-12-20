## Exercise 9-2
# Write a function called hasno_e that returns true if the given word doesn’t have the letter e in it.
using Printf

println("Ans: [Part 1]")

function hasno_e(string)
    return !('e' in string)
end

println(hasno_e("Hello"))
println(hasno_e("print"))

# Modify your program from the previous section to print only the words that have no e and compute the percentage of the words in the list that have no e.
println("[Part 2]")

total = 0
have_no_e = 0

for line in eachline("words.txt")
    global total += 1
    if hasno_e(line)
        global have_no_e += 1
        println(line)
    end
end

@printf("%0.2f%% words have no e.\n", ((have_no_e)/total)*100)

println("End.")
