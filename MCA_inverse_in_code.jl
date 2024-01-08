# MCA Algorithm for computing matrix inverse

using LinearAlgebra

m =  64

A = round.(rand(m,m)*10)
M = zeros(m,m)
chessboard = [(-1)^(i+j) for i in 1:m, j in 1:m]

# M
for i in 1:m
    for j in 1:m
        det_mat =  A[setdiff(1:end, i), setdiff(1:end, j)]
        M[i,j] = det(det_mat)
    end
end

# C
C = M .* chessboard

# A
A_inv = C' .* det(A)^-1

# Test
round.(A*A_inv)
