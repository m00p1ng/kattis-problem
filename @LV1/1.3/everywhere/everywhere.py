n = int(input())

for _ in range(n):
    m = int(input())
    ans = len(set([input() for _ in range(m)]))
    print(ans)
