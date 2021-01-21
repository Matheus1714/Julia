function print(io::IO, x)
    lock(io)
    try
        show(io, x)
    finally
        unlock(io)
    end
    return nothing
end

A = zeros(4,4)

show(stdout, A)

show(stdout, "text/plain", A)