#author HARI CHAND
function midpoint_double(f, a, b, c, d, m, n)
   hx =( b - a)/m
   hy =( d - c)/n
   result = 0

   for
    i in 1:10000,  j in 1:10000
    result += hx*hy*f(a + hx/2 + i*hx, c + hy/2 + j*hy)
   end
    return result
end
f = (x,y) -> 2x + y
println(midpoint_double(f, 0, 2, 2, 3, 10000, 10000))
