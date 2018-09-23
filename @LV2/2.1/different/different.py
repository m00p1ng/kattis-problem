while True:
    try:
        [a, b] = input().split(" ")
        print(abs(int(a) - int(b)))
    except EOFError:
        break
