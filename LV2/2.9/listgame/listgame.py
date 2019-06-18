LIMIT_P = 32000
is_prime = [True]*LIMIT_P


def sieve():
    is_prime[0] = is_prime[1]

    for i in range(2, LIMIT_P):
        if is_prime[i]:
            yield i
            for j in range(i + i, LIMIT_P, i):
                is_prime[j] = False


n = int(input())
cnt = 0

for pf in sieve():
    while n % pf == 0:
        cnt += 1
        n /= pf
    if n == 1:
        break

if n > 1:
    cnt += 1

print(cnt)
