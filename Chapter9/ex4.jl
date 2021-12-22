## Exercise 9-4
# Write a function named usesonly that takes a word and a string of letters, and that returns true if the word contains only letters in the list. Can you make a sentence using only the letters acefhlo? Other than "Hoe alfalfa?"

println("Ans:")

function usesonly(word, letters)
    letters *= " "

    for letter in lowercase(word)
        if letter ∉ letters
            return false
        end
    end
    
    return true
end

println(usesonly("Hoe alfalfa", "acefhlo"))

for word in eachline("words.txt")
    if usesonly(word, "acefhlo")
        println(word)
    end
end

println("End.")
