import math

n = input()
b = len(n)
fac = [0, 1, 2, 6, 24, 120, 720]

if b < 4:
    n = int(n)
    for i, f in enumerate(fac):
        if n == f:
            print(i)
else:
    a = 0
    i = 1
    while math.ceil(a) != b:
        a += math.log10(i)
        i += 1
    print(i-1)
