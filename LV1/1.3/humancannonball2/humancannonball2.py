from math import sin, cos, pi

g = 9.81
n = int(input())

for _ in range(n):
    v, theta, x1, h1, h2 = [float(i) for i in input().split(' ')]
    theta = theta*pi/180

    t = x1/(v*cos(theta))
    y = v*t*sin(theta)-g*t*t/2

    if y > h1 + 1 and y < h2 - 1:
        print("Safe")
    else:
        print("Not Safe")
