using LinearAlgebra

points = Float64[]

# Loop to check det(AB) = det(A) * det(B) for various matrix sizes
for n in 3:40

    A = rand(n,n)
    B = rand(n,n)

    det_AB = det(A*B)
    det_A = det(A)
    det_B = det(B)

    point = det_AB - det_A * det_B

    push!(points, point)    

end

using Plots

plot(points)
