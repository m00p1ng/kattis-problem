_, t = [int(i) for i in input().split(' ')]
l = [int(i) for i in input().split(' ')]

ans = 0
total = 0

for i in l:
    total += i
    if total > t:
        break
    ans += 1

print(ans)
