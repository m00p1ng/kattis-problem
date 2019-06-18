from math import log, log2


def find_times(m, n, t):
    if t == 1:
        ans = 1
        for i in range(1, n+1):
            ans *= i
            if ans > m:
                return m+1
        return 1
    if t == 2:
        return 1 << n
    if t == 3:
        return n**4
    if t == 4:
        return n**3
    if t == 5:
        return n*n
    if t == 6:
        return n*log2(n)
    return n


m, n, t = [int(i) for i in input().split(' ')]

if m >= find_times(m, n, t):
    print("AC")
else:
    print("TLE")
