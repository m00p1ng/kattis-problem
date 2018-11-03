while True:
    l = sorted([int(i) for i in input().split(' ')])

    if not all(l):
        break

    if l[0]**2 + l[1]**2 == l[2]**2:
        print("right")
    else:
        print("wrong")
