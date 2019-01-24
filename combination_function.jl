n=20
k=12
function fact(n::Int)
           n >= 0 || error("n must be non-negative")
           n == 0 && return 1
           n * fact(n-1)
end

result = fact(n)/(fact(k)*fact(n-k))

show(result)
