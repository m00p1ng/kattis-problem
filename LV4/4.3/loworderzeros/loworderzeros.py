limit = 1_000_000
fac = [1]*(limit+1)


def gen_fac():
    for i in range(2, limit+1):
        ans = fac[i-1]*i
        while ans % 10 == 0:
            ans //= 10
        fac[i] = ans % limit


gen_fac()
while True:
    n = int(input())

    if n == 0:
        break

    print(fac[n] % 10)
