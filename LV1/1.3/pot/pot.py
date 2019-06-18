def make_pair(s):
    return (s/10) ** (s % 10)


n = int(input())
ans = [make_pair(int(input())) for _ in range(n)]
print(sum(ans))
