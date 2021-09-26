## Exercise 8-5
## Encapsulate this code in a function named count, and generalize it so that it accepts the string and the letter as arguments.
println("Ans 1: ")

function count(word::AbstractString, to_count::Char)
    counter = 0
    for letter in word
        if letter == to_count
            counter = counter + 1
        end
    end
    counter
end 

println(count("banana", 'a'))

## Then rewrite the function so that instead of traversing the string, it uses the three-parameter version of find from the previous section.
println("Ans 2: ")

function find(word, letter, start::Int = 1)
    word = word[start : end]
    index = firstindex(word)
    while index <= sizeof(word)
        if word[index] == letter
            return index + start - 1
        end
        index = nextind(word, index)
    end
    -1
end

function count_find(word::AbstractString, letter::Char)
    counter = 0
    last_ind = 1
    while true
        ind = find(word, letter, last_ind)
        if ind > 0
            counter += 1
            last_ind = ind + 1
        end
        
        if last_ind > length(word) || ind == -1
            break;
        end
    end
    counter
end

println(count_find("bananana", 'a'))

println("End.")
