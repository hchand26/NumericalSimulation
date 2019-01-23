#author HARI CHAND
function trapezoidal(f, a, b, n)
       h = (b-a)/n
       result = 0.5(f(a) + f(b))
        for i in 1:n
        result += f(a + i*h)
        end
       result *= h
       #return result
  end
f = x -> 2x^2 + 30x + 9
println(trapezoidal(f,0, 1, 1e6))
