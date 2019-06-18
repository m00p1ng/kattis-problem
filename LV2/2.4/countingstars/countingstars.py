import sys
sys.setrecursionlimit(100000)


def dfs(i, j):
    if any([i < 0, j < 0, i >= n, j >= m]):
        return
    if graph[i][j] == '#':
        return

    graph[i][j] = '#'

    dx = [1, -1, 0, 0]
    dy = [0, 0, 1, -1]

    for d in range(4):
        dfs(i+dx[d], j+dy[d])


ts = 0
while True:
    try:
        ts += 1
        n, m = [int(i) for i in input().split(' ')]
        graph = [list(input()) for _ in range(n)]

        cnt = 0
        for i in range(n):
            for j in range(m):
                if graph[i][j] == '-':
                    dfs(i, j)
                    cnt += 1
        print(f"Case {ts}: {cnt}")
    except EOFError:
        break
