# Rref for computing matrix inverse

using LinearAlgebra
using RowEchelon

m =  8

A = Diagonal(round.(rand(m)*10))
A_inv = zeros(m,m)

#display(A)
#display(inv(A))

# For diagonals, inversion is just the inverse (reciprocal) of each element, because diagonal x diagonal is essentially Hadamard product.
for i in 1:m
    for j in 1:m
        if A[i,j] != 0
            A_inv[i,j] = 1/A[i,j]
        end
    end
end

Int.(A*A_inv)