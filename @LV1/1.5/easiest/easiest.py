def sum_digit(n):
    ans = 0
    temp = n

    while temp > 0:
        ans += temp % 10
        temp //= 10

    return ans


while True:
    n = int(input())
    if n == 0:
        break

    i = 11
    sum_n = sum_digit(n)

    while True:
        sum_i = sum_digit(n*i)
        if sum_i == sum_n:
            print(i)
            break
        i += 1
