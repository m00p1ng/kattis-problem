op = ['+', '-', '*', '/']


def find_sign(a, b, c):
    for p in op:
        if eval(f"{a}{p}{b}") == c:
            return (p, '=')
        if eval(f"{b}{p}{c}") == a:
            return ('=', p)


a, b, c = [int(i) for i in input().split(' ')]
sign = find_sign(a, b, c)
print(f"{a}{sign[0]}{b}{sign[1]}{c}")
