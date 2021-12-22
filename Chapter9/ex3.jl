## Exercise 9-3
# Write a function named avoids that takes a word and a string of forbidden letters, and that returns true if the word doesn’t use any of the forbidden letters.
println("Ans:\n[Part 1]")

function avoids(string, forbidden_letters)
    for letter in forbidden_letters
        if letter ∈ string
            return false
        end
    end
    return true
end

println(avoids("hello world", "hwe"))
println(avoids("printf", "xyz"))

# Modify your program to prompt the user to enter a string of forbidden letters and then print the number of words that don’t contain any of them. Can you find a combination of 5 forbidden letters that excludes the smallest number of words?
println("[Part 2]")

print("Please Enter forbidden letters: ")
forbidden_letters = strip(readline())

count = 0
for line in eachline("words.txt")
    if avoids(line, forbidden_letters)
        global count += 1
    end
end

println("There are total of $count letters which avoids the forbidden letters.")

println("End.")
