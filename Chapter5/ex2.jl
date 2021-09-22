## Exercise 5-2
## The function time returns the current Greenwich Mean Time in seconds since “the epoch”, which is an arbitrary time used as a reference point. On UNIX systems, the epoch is 1 January 1970.

## julia> time()
## 1.554236060271472e9

## Write a script that reads the current time and converts it to a time of day in hours, minutes, and seconds, plus the number of days since the epoch.
println("Ans: ")
using Printf

curr_time = time()

seconds = curr_time % 60
h = 60 * 60
minutes = ((curr_time - seconds) % (h))/h
d = 60 * 60 * 24
hours = ((curr_time - (seconds + minutes)) % (d)) / d
days = (curr_time - (seconds + minutes + hours)) / (60 * 60 * 24)

@printf("%d Days, %d Hours, %d Minutes, %d Seconds\n", days, hours, minutes, seconds)

println("End.")
