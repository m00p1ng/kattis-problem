ts = 0
while True:
    ts += 1
    try:
        line = [int(i) for i in input().split(' ')][1:]
        a = min(line)
        b = max(line)
        print(f'Case {ts}: {a} {b} {b-a}')
    except EOFError:
        break
