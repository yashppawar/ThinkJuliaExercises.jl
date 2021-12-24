## Exercise 9-6
# Write a function called isabecedarian that returns true if the letters in a word appear in alphabetical order (double letters are ok). How many abecedarian words are there?

println("Ans: ")

function isabecedarian(word)
    let 
        word = uppercase(word)
        prev = word[1]

        for letter in word
            if letter < prev
                return false
            end
            prev = letter 
        end
    end

    return true
end

# println(isabecedarian("abcecd"))
count = 0
for word in eachline("words.txt")
    if isabecedarian(word)
        global count += 1
    end
end

println("There are $count abecedarian words.")

println("End.")
