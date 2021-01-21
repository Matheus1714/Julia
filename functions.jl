f(x) = x^3
println(f(2im + 4))
println("----------------------\n")
z = 3im + 11
argz = angle(z)
realz = real(z)
imagz = imag(z)
z_ = conj(z)
modz = abs(z)
modz2 = abs2(z)

println("Z = ",z)
println("Arz(Z) = ",argz)
println("Re(Z) = ",realz)
println("Im(Z) = ",imagz)
println("Z_ = ",z_)
println("|Z| = ",modz)
println("|Z|^2 = ",modz2)

A = [1,2,3,4,5,6,7]

B = A.^3