s = input()

l = [0]*4

for i in s:
    if i == '_':
        l[0] += 1
    elif i.islower():
        l[1] += 1
    elif i.isupper():
        l[2] += 1
    else:
        l[3] += 1

[print(i/len(s)) for i in l]
