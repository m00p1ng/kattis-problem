def find_shared_char(a, b):
    for i, c in enumerate(a):
        for j, d in enumerate(b):
            if c == d:
                return (i, j)


a, b = input().split(' ')
la = len(a)
lb = len(b)

sa, sb = find_shared_char(a, b)

board = ['.'*la for _ in range(lb)]
board[sb] = a
board = [[x for x in i] for i in board]

for i, c in enumerate(b):
    board[i][sa] = c

[print(''.join(i)) for i in board]
