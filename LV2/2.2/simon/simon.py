n = int(input())
pat = 'simon says '

for _ in range(n):
    line = input()
    if line.startswith(pat):
        print(line.replace(pat, '').strip())
    else:
        print()
