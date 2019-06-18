n = int(input())

for _ in range(n):
    r, e, c = [int(i) for i in input().split(' ')]
    diff = e - r

    if diff == c:
        print("does not matter")
    elif diff > c:
        print("advertise")
    else:
        print("do not advertise")
