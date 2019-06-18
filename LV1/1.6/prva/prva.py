r, c = [int(x) for x in input().split(' ')]

board = [input() for _ in range(r)]
vert_board = [''.join([board[i][j] for i in range(r)]) for j in range(c)]

word = [[i for i in x.split('#') if len(i) > 1] for x in board]
word += [[i for i in x.split('#') if len(i) > 1] for x in vert_board]
word = sorted([x for i in word for x in i])

print(word[0])
