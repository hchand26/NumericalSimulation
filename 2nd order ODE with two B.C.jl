
omega= 2
P = 2*π/omega
dt = P/400
T = 3*P
N_t = T/dt
t = 0:0.01:12
u = zeros(1201)

u[1] = U_0 =50
u[2] = u[1] - 0.5*dt^2*omega^2*u[1]
for n in 2:1200
u[n+1] = 2* u[n]-u[n-1] - dt^2*omega^2*u[n]
println(n)
println(u[n+1])
end
using Plots
plot(t,u)
