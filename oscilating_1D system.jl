ω=π/2
P = 2*π/ω
dt = P/400
T = 3*P
N_t = T/dt
t = 0:0.01:12
u = zeros(1201)
v = zeros(1201)
# Initial condition
X_0 =2
u[1] = X_0
v[1] = 0
# Step equations forward in time
for n in 1:1200
    u[n+1] = u[n]+dt*v[n]
    v[n+1] = v[n]-dt*ω^2*u[n]
    println(n)
    println(u[n+1])
    println(v[n+1])
end
using Plots
plot(t,u)
using Plots
 eq1(t) = X_0*cos(ω*t);
 plot!(eq1,0:0.01:12);
