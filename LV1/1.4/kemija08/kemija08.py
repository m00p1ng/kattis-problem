v = [f'{a}p{a}' for a in 'aeiou']

s = input()

for i in v:
    s = s.replace(i, i[0])

print(s)
