## Exercise 2-3
## Practice using the Julia REPL as a calculator:

## 1. The volume of a sphere with radius r is (4/3)πr^3. What is the volume of a sphere with radius 5?
println("Ans 1:")
println("the volume of sphere with radius 5 is: " * string((4/3) * π * 5 ^ 3))

## 2. Suppose the cover price of a book is $ 24.95, but bookstores get a 40 % discount. Shipping costs $ 3 for the first copy and 75 cents for each additional copy. What is the total wholesale cost for 60 copies?
println("Ans 2:")
cover_price = 24.95
n_copies = 60
shipping_cost = 3 + (n_copies - 1) * 0.75
books_price = n_copies * cover_price * 0.6 
total = shipping_cost + books_price
println(total)

## 3. If I leave my house at 6:52 am and run 1 mile at an easy pace (8:15 per mile), then 3 miles at tempo (7:12 per mile) and 1 mile at easy pace again, what time do I get home for breakfast?
println("Ans 3:")
easy_pace_time = 8*60 + 15
tempo_pace_time = 7*60 + 12

total_time = 2 * easy_pace_time + 3 * tempo_pace_time

seconds = total_time % 60
minutes = total_time ÷ 60


println("you will reach home at 6:52 + ", minutes, " minutes and ", seconds, " seconds")
println("End.")
