def is_vaild_bound(i, j):
    return i >= 0 and j >= 0 and i < 5 and j < 5


def check_pos(board, i, j):
    for d in pos:
        ni = i + d[0]
        nj = j + d[1]

        if not is_vaild_bound(ni, nj):
            continue
        if board[ni][nj] == 'k':
            return True
    return False


def can_attack(board):
    for i in range(5):
        for j in range(5):
            if board[i][j] == 'k':
                if check_pos(board, i, j):
                    return True
    return False


pos = [(-1, 2), (1, 2), (-1, -2), (1, 2),
       (2, -1), (2, 1), (-2, -1), (-2, 1)]

board = [input() for _ in range(5)]
n_k = sum([l.count('k') for l in board])

is_valid = n_k == 9

if is_valid:
    is_valid = not can_attack(board)

if is_valid:
    print("valid")
else:
    print("invalid")
