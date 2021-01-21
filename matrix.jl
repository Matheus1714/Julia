using LinearAlgebra

function print(io::IO, x)
    lock(io)
    try
        show(io, x)
    finally
        unlock(io)
    end
    return nothing
end

A = [
    1 2 3;
    4 5 6;
    7 8 1;
]


#show(stdout, "text/plain", A)

t = tr(A)
#println(t)

detA = det(A)
#println(detA)

C = inv(A)
#show(C)

lambda = eigvals(A)
#println(lambda)

D = eigvecs(A)
#show(stdout, "text/plain", D)

L, U = factorize(A)

#println("Matrix L")
#show(stdout, "text/plain", L)
#println("\n")
#println("Matrix U")
#show(stdout, "text/plain", U)


X = [
    1  2  3  ;
    11 45 30 ;
    12 45 129
]

Y = [
    13 32 83  ;
    19 55 21 ;
    15 95 179
]

P = transpose([1 2 3])
Z = X * Y
Q = Z * P

#show(stdout, "text/plain", Q)
