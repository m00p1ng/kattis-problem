def gen_fibo():
    fib = [1]*50
    fib[0] = 0

    for i in range(2, 50):
        fib[i] = fib[i-1] + fib[i-2]

    return fib


fib = gen_fibo()
n = int(input())

print(fib[n-1], fib[n])
