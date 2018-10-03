n = int(input())

price = sorted([int(input()) for _ in range(n)], reverse=True)
price += [0]*(3 - len(price) % 3)

total = sum([sum(price[x:x+2]) for x in range(0, n, 3)])

print(total)
