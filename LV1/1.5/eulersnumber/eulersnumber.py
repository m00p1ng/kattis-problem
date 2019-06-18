def eval_euler(n):
    if n == 0:
        return 1
    if n == 1:
        return 2

    fac = [0]*(n+1)
    fac[0] = fac[1] = 1

    euler = 2
    for i in range(2, n+1):
        fac[i] = fac[i-1]*i
        euler += 1/fac[i]

    return euler


n = int(input())
euler = eval_euler(n)

print(f'{euler:.20f}')
