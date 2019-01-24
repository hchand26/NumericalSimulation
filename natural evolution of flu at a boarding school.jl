
# Time unit: 1 h
beta = 10/(40*8*24)
gamma = 3/(15*24)
dt = 0.1 # 6 min
D = 30 # Simulate for D days
N_t = D*24/dt # Corresponding no of hours
t = 0:0.1:720
S = zeros(7201)
I = zeros(7201)
R = zeros(7201)
# Initial condition
S[1] = 50
I[1] = 1
R[1] = 0
# Step equations forward in time
for n in 1:7200
    S[n+1] = S[n]-dt*beta*S[n]*I[n]
    I[n+1] = I[n]+dt*beta*S[n]*I[n]-dt*gamma*I[n]
    R[n+1] = R[n]+dt*gamma*I[n]
end
using Plots
plot(t, S)
plot!(t, I)
plot!(t, R)
