from collections import Counter
n = int(input())

for ts in range(1, n+1):
    m = int(input())
    c = input().split(' ')

    print(f"Case #{ts}:", end="")
    for k, v in Counter(c).items():
        if v == 1:
            print(" " + k, end="")
    print()
