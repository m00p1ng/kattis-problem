x = int(input())
n = int(input())

total = sum([int(input()) for _ in range(n)])
print(n*x + x - total)
