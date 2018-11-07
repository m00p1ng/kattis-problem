while True:
    line = input().split(' ')

    if len(line) == 1:
        break

    x1, y1, x2, y2, p = [float(i) for i in line]
    ans = (abs(x1-x2)**p+abs(y1-y2)**p)**(1/p)
    print(ans)
