# Rref for computing matrix inverse

using LinearAlgebra
using RowEchelon

m =  64

A = round.(rand(m,m)*10)

AI = [A I]

A_inv = rref(AI)[:,Int(m+1):end]

Int.(abs.(round.(A_inv*A)))