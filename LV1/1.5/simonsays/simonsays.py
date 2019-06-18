n = int(input())
pat = 'Simon says'

for _ in range(n):
    line = input()
    if line.startswith(pat):
        print(line.replace(pat, '').strip())
