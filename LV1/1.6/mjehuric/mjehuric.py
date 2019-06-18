l = [int(x) for x in input().split(' ')]

while l != [1, 2, 3, 4, 5]:
    if l[0] > l[1]:
        l[0], l[1] = l[1], l[0]
        print(' '.join([str(i) for i in l]))
    if l[1] > l[2]:
        l[1], l[2] = l[2], l[1]
        print(' '.join([str(i) for i in l]))
    if l[2] > l[3]:
        l[2], l[3] = l[3], l[2]
        print(' '.join([str(i) for i in l]))
    if l[3] > l[4]:
        l[3], l[4] = l[4], l[3]
        print(' '.join([str(i) for i in l]))
