## Exercise 6-6
## A palindrome is a word that is spelled the same backward and forward, like “noon” and “redivider”. Recursively, a word is a palindrome if the first and last letters are the same and the middle is a palindrome.

## The following are functions that take a string argument and return the first, last, and middle letters:

function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

## We’ll see how they work in Strings

## 1. Test these functions out. What happens if you call middle with a string with two letters? One letter? What about the empty string, which is written "" and contains no letters?
println("Ans 1: ")

println(first("first")) # returns 'f'
println(last("last")) # returns 't'
println(middle("middle")) # returns "iddl"

println(middle("as")) # returns ''
println(middle("A")) # returns ''
# println(middle("")) # error, empty string

## 2. Write a function called ispalindrome that takes a string argument and returns true if it is a palindrome and false otherwise. Remember that you can use the built-in function length to check the length of a string.
println("Ans 2: ")

function ispalindrome(word)
    if length(word) == 0
        return true
    end

    if first(word) == last(word)
        return ispalindrome(middle(word))
    else
        return false
    end
end

println(ispalindrome("noon"))
println(ispalindrome("redivider"))
println(ispalindrome("name"))

println("End.")
