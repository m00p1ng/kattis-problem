import math

n = int(input())
soy = [int(input()) for _ in range(n)]
[print(math.ceil(i/400)) for i in soy]
