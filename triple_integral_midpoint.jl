#author HARI CHAND
function midpoint_triple(g, a, b, c, d, e, f, p, q, r)
   hx =( b - a)/p
   hy =( d - c)/q
   hz =( f - e)/r
   result = 0

   for
    i in 1:1000,  j in 1:1000, k in 1:1000
    result += hx*hy*hz*g(a + hx/2 + i*hx, c + hy/2 + j*hy, e+ hz/2 + k*hz)
   end
    return result
end
g = (x,y,z) -> 2x + y + z
println(midpoint_triple(g, 0, 2, 2, 3, 1, 2, 1000, 1000, 1000))
