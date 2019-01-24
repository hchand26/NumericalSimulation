r = 0.1
dt =0.4
t = 0:0.5:20
N = zeros(41)
N[1] = 100
for n in 1:40
    N[n+1] = N[n]+r*dt*N[n]
    println(n)
    println(N[n+1])
end
using Plots
plot(t,N)
scatter!(t, N, label="points")
