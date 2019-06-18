s = [int(x) for x in input()]

l = len(s)-1

ans_x = 0
ans_y = 0
for i, c in enumerate(s):
    if c == 1 or c == 3:
        ans_x |= (1 << (l-i))
    if c == 2 or c == 3:
        ans_y |= (1 << (l-i))

print(len(s), ans_x, ans_y)
