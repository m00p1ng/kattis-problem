m, n = [int(x) for x in input().split(' ')]
u, l, r, d = [int(x) for x in input().split(' ')]

word = [input() for _ in range(m)]

frame = [None]*20
for i in range(20):
    if i % 2 == 0:
        frame[i] = ['#', '.']*10
    else:
        frame[i] = ['.', '#']*10

for i in range(u):
    print(''.join(frame[i][0:l+n+r]))

for i, w in enumerate(word):
    left = ''.join(frame[u+i][0:l])
    right = ''.join(frame[u+i][l+n:l+n+r])
    print(f'{left}{w}{right}')

for i in range(d):
    print(''.join(frame[u+m+i][0:l+n+r]))
