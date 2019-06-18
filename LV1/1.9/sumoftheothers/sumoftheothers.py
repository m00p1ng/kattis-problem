while True:
    try:
        n = sum([int(x) for x in input().split(' ')])
        print(n//2)
    except EOFError:
        break
