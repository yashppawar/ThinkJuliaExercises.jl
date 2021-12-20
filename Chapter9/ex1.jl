## Exercise 9-1
## Write a program that reads words.txt and prints only the words with more than 20 characters (not counting whitespace).

println("Ans: ")

for line in eachline("words.txt")
    str = replace(strip(line), " " => "")
    if length(str) > 20
        println(str)
    end
end

println("End.")
