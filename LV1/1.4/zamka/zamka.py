def sum_digit(n):
    ans = 0
    temp = n
    while temp > 0:
        ans += temp % 10
        temp //= 10

    return ans


l = int(input())
d = int(input())
x = int(input())

for i in range(l, d+1):
    if sum_digit(i) == x:
        print(i)
        break

for i in range(d, l-1, -1):
    if sum_digit(i) == x:
        print(i)
        break
