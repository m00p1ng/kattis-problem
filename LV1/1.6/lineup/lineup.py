n = int(input())
bag = [input() for _ in range(n)]

if bag == sorted(bag):
    print("INCREASING")
elif bag == sorted(bag)[::-1]:
    print("DECREASING")
else:
    print("NEITHER")
