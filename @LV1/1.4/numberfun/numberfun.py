def solveable(a, b, c):
    if a + b == c or a * b == c:
        return True
    if abs(a - b) == c:
        return True
    if a / b == c or b / a == c:
        return True
    return False


n = int(input())

lines = [[int(i) for i in input().split(" ")] for _ in range(n)]
ans = ["Possible" if solveable(*line) else "Impossible" for line in lines]

[print(n) for n in ans]
