A = rand(5,5)
B = rand(5,5)



function layer_mult(M1, M2)

    mat_len = size(M1)[1]
    layers = [zeros(mat_len,mat_len) for m in 1:mat_len]

    for i in 1:mat_len
        layers[i] = M1[:,i] * M2[i,:]'
    end

    return layers, sum(layers)
end