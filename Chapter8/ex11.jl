## Exercise 8-11
## A Caesar cypher is a weak form of encryption that involves “rotating” each letter by a fixed number of places. To rotate a letter means to shift it through the alphabet, wrapping around to the beginning if necessary, so ’A’ rotated by 3 is ’D’ and ’Z’ rotated by 1 is ’A’.

## To rotate a word, rotate each letter by the same amount. For example, "cheer" rotated by 7 is "jolly" and "melon" rotated by -10 is "cubed". In the movie 2001: A Space Odyssey, the ship computer is called HAL, which is IBM rotated by -1.

## Write a function called rotateword that takes a string and an integer as parameters, and returns a new string that contains the letters from the original string rotated by the given amount.

## TIP
## You might want to use the built-in function Int, which converts a character to a numeric code, and Char, which converts numeric codes to characters. Letters of the alphabet are encoded in alphabetical order, so for example:

## julia> Int('c') - Int('a')
## 2
## Because c is the third letter of the alphabet. But beware: the numeric codes for uppercase letters are different.

## julia> Char(Int('A') + 32)
## 'a': ASCII/Unicode U+0061 (category Ll: Letter, lowercase)

## Potentially offensive jokes on the Internet are sometimes encoded in ROT13, which is a Caesar cypher with rotation 13. If you are not easily offended, find and decode some of them.

println("Ans:")

function ceasarCypher(input::AbstractString, rotator::Int)
    output = ""
    for c in input
        c = Int(c) + rotator
        # if !( 65 < c < 90 || 97 < c < 122 )
        #     if c < 65 || c < 97
        #         c += 26
        #     elseif c > 90 || c > 122
        #         c -= 26
        #     end 
        # end
        output *= Char(c)
    end
    output
end

print("Please enter a string: ")
str = strip(readline())
out = ceasarCypher(str, 13)
println("Cyphered string: $out")

println("End.")
