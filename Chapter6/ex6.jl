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

## 2. Write a function called ispalindrome that takes a string argument and returns true if it is a palindrome and false otherwise. Remember that you can use the built-in function length to check the length of a string.
println("Ans 2: ")

println("End.")
