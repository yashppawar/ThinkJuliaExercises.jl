## Exercise 8 - 7
## Read the documentation of the string functions at https://docs.julialang.org/en/v1/manual/strings/. You might want to experiment with some of them to make sure you understand how they work. strip and replace are particularly useful.
## The documentation uses a syntax that might be confusing. For example, in search(string::AbstractString, chars::Chars, [start::Integer]), the brackets indicate optional arguments. So string and chars are required, but start is optional.
println("Ans: ")

myvar = "this is from myvar"
mynum = 10
println("'$myvar' and my num is $mynum")

println("Please enter something: ");
mystr = strip(readline())
println(replace(mystr, "g" => "f"))

println(firstindex(mystr, "g"))
println("End.")
