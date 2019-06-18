piece = [1, 1, 2, 2, 2, 8]
line = [int(i) for i in input().split(" ")]

ans = [str(a-b) for a, b in zip(piece, line)]
print(" ".join(ans))
