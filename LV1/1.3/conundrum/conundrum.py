line = input().lower()

p = line[0::3].count('p')
e = line[1::3].count('e')
r = line[2::3].count('r')

print(len(line)-(p+e+r))
