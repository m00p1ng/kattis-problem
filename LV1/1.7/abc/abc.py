l = sorted([int(i) for i in input().split(' ')])
o = [ord(c) - ord('A') for c in input()]

[print(f'{l[i]} ', end="") for i in o]
