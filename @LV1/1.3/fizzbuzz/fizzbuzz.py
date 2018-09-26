def fizzbuzz(n, x, y):
    mx = n % x == 0
    my = n % y == 0

    if mx and my:
        return "FizzBuzz"
    elif mx:
        return "Fizz"
    elif my:
        return "Buzz"
    else:
        return n


x, y, n = [int(i) for i in input().split(" ")]

[print(fizzbuzz(i, x, y)) for i in range(1, n+1)]
