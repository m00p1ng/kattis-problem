a, b, c = 1, 0, 0

s = input()

for act in s:
    if act == 'A':
        a, b = b, a
    elif act == 'B':
        b, c = c, b
    else:
        a, c = c, a

if a:
    print(1)
elif b:
    print(2)
else:
    print(3)
