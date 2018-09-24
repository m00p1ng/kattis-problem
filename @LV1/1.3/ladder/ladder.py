import math

h, v = [int(i) for i in input().split(' ')]
ans = math.ceil(h/math.sin(v/180*math.pi))

print(ans)
