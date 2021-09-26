## Exercise 8-4
## Modify find so that it has a third parameter, the index in word where it should start looking.
println("Ans: ")

function find(word, letter, start::Int = 1)
    word = word[start:end]
    index = firstindex(word)
    while index <= sizeof(word)
        if word[index] == letter
            return index + start - 1
        end
        index = nextind(word, index)
    end
    -1
end

mystr = "hello world this is again h- hello world to check if the function is working."
println(find(mystr, 'h', 16))
println(mystr[find(mystr, 'h', 16)])

println("End.")
