n = int(input())

l = []
for _ in range(n):
    a, b = input().split(' ')

    if a.isdigit():
        l.append((int(a), b))
    else:
        l.append((2*int(b), a))

[print(ans[1]) for ans in sorted(l)]
