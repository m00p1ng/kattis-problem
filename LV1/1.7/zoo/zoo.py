from collections import Counter
ts = 0
while True:
    n = int(input())
    if n == 0:
        break

    ts += 1
    print(f"List {ts}:")

    animal = [input().split(' ')[-1].lower() for _ in range(n)]
    c = Counter(animal)
    name = sorted(list(c))

    for ani in name:
        print(f"{ani} | {c[ani]}")
