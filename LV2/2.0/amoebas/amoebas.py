def floodfill(i, j):
    if any([i < 0, j < 0, i == n, j == m]):
        return
    if graph[i][j] == '.':
        return

    graph[i][j] = '.'

    for d in move:
        floodfill(i+d[0], j+d[1])


n, m = [int(i) for i in input().split(' ')]
graph = [[c for c in input()] for _ in range(n)]
move = [(0, 1), (1, 0), (0, -1), (-1, 0), (1, 1), (-1, -1), (1, -1), (-1, 1)]

cnt = 0
for i in range(n):
    for j in range(m):
        if graph[i][j] == '#':
            floodfill(i, j)
            cnt += 1
print(cnt)
