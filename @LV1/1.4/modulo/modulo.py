visited = [0]*42
while True:
    try:
        n = int(input())
        visited[n % 42] = 1
    except EOFError:
        break

print(sum(visited))
