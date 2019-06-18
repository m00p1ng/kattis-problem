# +----------+
# | TOO SLOW |
# +----------+
while True:
    a, b = [int(n) for n in input().split(' ')]
    if a == 0 and b == 0:
        break

    A = [int(input()) for _ in range(a)]
    idx = 0
    cnt = 0

    for _ in range(b):
        B = int(input())

        while idx < a and B > A[idx]:
            idx += 1

        if idx < a and B == A[idx]:
            cnt += 1

    print(cnt)
