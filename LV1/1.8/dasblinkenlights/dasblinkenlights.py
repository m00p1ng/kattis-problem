def gcd(a, b):
    if b == 0:
        return a
    return gcd(b, a % b)


a, b, tl = [int(i) for i in input().split(' ')]

lcm = a*b/gcd(a, b)

if tl/lcm >= 1:
    print("yes")
else:
    print("no")
