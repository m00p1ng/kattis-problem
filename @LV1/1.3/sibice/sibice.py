n, w, h = [int(i) for i in input().split(' ')]

d = (w*w+h*h)**(0.5)

for _ in range(n):
    k = int(input())
    if k <= d:
        print("DA")
    else:
        print("NE")
