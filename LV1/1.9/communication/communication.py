def calc_xor():
    d = {}

    for x in range(256):
        a = (x ^ (x << 1)) & 255
        d[a] = x
    return d


d = calc_xor()

_ = input()

l = [int(i) for i in input().split(' ')]
[print(d[i], end=" ") for i in l]
