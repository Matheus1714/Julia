MEMO = zeros(0)

function fibonacci(n)
    if n<length(MEMO)
        return MEMO[n]
    end
    if n == 1
        push!(MEMO, 1) 
        return 1
    elseif n == 2 
        push!(MEMO, 1)
        return 1
    else
        for i=(length(MEMO)+1):(n-1)
                fibonacci(i)
        end

        push!(MEMO, MEMO[n-1] + MEMO[n-2])
        return MEMO[n]
    end
end

println(fibonacci(10))

for(index, value) in enumerate(MEMO)
    println("$index - $value")
end