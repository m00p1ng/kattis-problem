n = int(input())

for _ in range(n):
    a = input()
    b = input()

    out = ''
    for c in zip(a, b):
        if c[0] == c[1]:
            out += '.'
        else:
            out += '*'
    print(a)
    print(b)
    print(''.join(out))
    print()
