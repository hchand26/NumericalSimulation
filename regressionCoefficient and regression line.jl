function regressionCoefficient(X, Y, n)
    ΣX = 0
    ΣY = 0
    ΣXY = 0
    sqΣX = 0

    i = 1
    while i < n+1
        ΣX = ΣX + X[i] # sum of elements of array X.

        ΣY = ΣY + Y[i] # sum of elements of array Y.

        ΣXY = ΣXY + X[i] * Y[i] # sum of X[i] * Y[i].

        sqΣX = sqΣX + X[i] * X[i] # sum of square of array elements.


        i = i + 1
    end

    ayx = (n * ΣXY - ΣX * ΣY)/(n * sqΣX - ΣX * ΣX)
    return ayx
end

X = [1, 2, 3, 4, 5]
Y = [5, 8, 11, 14, 17]

# Find the size of array.
n = length(X)

println(regressionCoefficient(X, Y, n)) # 1.0388951521984215
