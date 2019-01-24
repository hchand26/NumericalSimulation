function correlationCoefficient(X, Y, n)
    ΣX = 0
    ΣY = 0
    ΣXY = 0
    sqΣX = 0
    sqΣY = 0

    i = 1
    while i < n
        ΣX = ΣX + X[i] # sum of elements of array X.

        ΣY = ΣY + Y[i] # sum of elements of array Y.

        ΣXY = ΣXY + X[i] * Y[i] # sum of X[i] * Y[i].

        sqΣX = sqΣX + X[i] * X[i] # sum of square of array elements.
        sqΣY = sqΣY + Y[i] * Y[i]

        i = i + 1
    end

    # use formula for calculating correlation
    #coefficient.
    r = (n * ΣXY - ΣX * ΣY)/
           (sqrt((n * sqΣX - ΣX * ΣX)* (n * sqΣY - ΣY * ΣY))) 
    return r
end

X = [15, 19, 21, 24, 27]
Y = [22, 25, 10, 31, 18]

# Find the size of array.
n = length(X)
# Function call to correlationCoefficient.
println(correlationCoefficient(X, Y, n))
