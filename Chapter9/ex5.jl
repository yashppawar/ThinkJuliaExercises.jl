## Exercise 9-5
# Write a function named usesall that takes a word and a string of required letters, and that returns true if the word uses all the required letters at least once. How many words are there that use all the vowels aeiou? How about aeiouy?

println("Ans:")

function usesall(word, letters)
    for letter in letters
        if letter ∉ word
            return false
        end
    end
    
    return true
end

function countUsesAll(letters)
    count = 0

    for word in eachline("words.txt")
        if usesall(word, letters)
            count += 1
        end
    end
    
    count
end

count_uses_vovels = countUsesAll("aeiou")
println("words that use all vowels aeiou are $count_uses_vovels")

count_uses_aeiouy = countUsesAll("aeiouy")
println("words that use aeiouy are $count_uses_aeiouy")

println("End.")
