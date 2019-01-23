#author HARI CHAND
function midpoint(f, a, b, n)
       h = (b-a)/n
       result = 0
        for i in 1:1e6
        result += f((a + h/2) + i*h)
        end
       result *= h
       return result
  end
f = x -> 2x^2 + 30x + 9
println(midpoint(f,0, 1, 1e6))
