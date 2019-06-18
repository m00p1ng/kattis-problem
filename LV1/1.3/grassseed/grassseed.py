c = float(input())
n = int(input())

ans = 0
for _ in range(n):
    w, h = [float(i) for i in input().split(' ')]
    ans += w*h

print(ans*c)
