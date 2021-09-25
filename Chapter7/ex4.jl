## Exercise 7-4
## The mathematician Srinivasa Ramanujan found an infinite series that can be used to generate a numerical approximation of 1/π:

## 1/π = 2√2 /9801 ∑_{k=0}^{∞} ((4k)!(1103+26390k))/(k!)^4 * 396^{4k}

## Write a function called estimatepi that uses this formula to compute and return an estimate of π. It should use a while loop to compute terms of the summation until the last term is smaller than 1e-15 (which is Julia notation for 10^{−15}). You can check the result by comparing it to π.
println("Ans: ")

function last_part(k::Int)
    numerator = factorial(4k) * (1103 + 26390 * k)
    denominator = factorial(k)^4 * 396^(4k)

    return numerator/denominator
end

function estimatepi()
    k = 0
    sum = 0.0

    while true
        last_term = last_part(k)
        
        if last_term < 1e-15
            break
        end
        
        k += 1
        sum += last_term
    end

    one_over_pi = ((2 * √2) / 9801) * sum

    return 1 / one_over_pi
end

println(estimatepi())

println("End.")
