n = int(input())
ans = 0

for _ in range(n):
    a, b = [float(i) for i in input().split(' ')]
    ans += a*b

print(ans)
