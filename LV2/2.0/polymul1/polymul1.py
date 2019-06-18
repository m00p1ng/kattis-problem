n = int(input())

for _ in range(n):
    a = int(input())
    xa = [int(x) for x in input().split(' ')]

    b = int(input())
    xb = [int(x) for x in input().split(' ')]

    out = [0]*(a+b+1)

    for i, x1 in enumerate(reversed(xa)):
        for j, x2 in enumerate(reversed(xb)):
            out[i+j] += x1*x2

    print(i+j)
    for j in reversed(out):
        print(j, end=" ")
    print()
