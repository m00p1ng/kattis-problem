n = int(input())

for _ in range(n):
    line = input().split(' ')
    b, p = int(line[0]), float(line[1])

    bpm = 60*b/p
    abpm = 60/p
    print(bpm-abpm, bpm, bpm+abpm)
