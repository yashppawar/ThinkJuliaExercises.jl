## Exercise 8-6
## Run the program on paper, changing the values of i and j during each iteration. Find and fix the second error in this function.
println("Ans: ")

function isreverse(word1, word2)
    if length(word1) != length(word2)
        return false
    end

    i = firstindex(word1)
    j = lastindex(word2)

    while j > 0
        if word1[i] != word2[j]
            return false
        end
        j = prevind(word2, j)
        i = nextind(word1, i)
    end
    true
end

println(isreverse("haha", "ahah"))
println(isreverse("I cant think of any other string", "maybe"))
println(isreverse("manye", "maybe"))

println("End.")
