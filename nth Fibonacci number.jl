#function to calculate the nth Fibonacci number
fib(n) = n < 2 ? n : fib(n-1) + fib(n-2)
show(fib(6))
