l = sorted([int(x) for x in input().split(' ')])

d1 = l[1] - l[0]
d2 = l[2] - l[1]

if d1 == d2:
    print(l[2]+d1)
elif abs(d1) > abs(d2):
    print(l[0] + d1//2)
else:
    print(l[1] + d2//2)
