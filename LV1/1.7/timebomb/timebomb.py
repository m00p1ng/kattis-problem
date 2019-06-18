def find_digit(board):
    number = [
        " ***   * *** *** * * *** *** *** *** ***",
        " * *   *   *   * * * *   *     * * * * *",
        " * *   * *** *** *** *** ***   * *** ***",
        " * *   * *     *   *   * * *   * * *   *",
        " ***   * *** ***   * *** ***   * *** ***",
    ]

    for i in range(10):
        cnt = 0
        for j in range(5):
            if board[j] == number[j][4*i:4*i+4]:
                cnt += 1
        if cnt == 5:
            return i

    return -1


def find_ans(board):
    ans = 0

    col = len(board[0])//4

    for i in range(col):
        d = find_digit([board[j][4*i:4*i+4] for j in range(5)])
        if d != -1:
            ans = ans*10 + d
        else:
            return -1
    return ans


board = [" " + input() for _ in range(5)]
ans = find_ans(board)

if ans % 6 == 0:
    print("BEER!!")
else:
    print("BOOM!!")
