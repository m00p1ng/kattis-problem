n = int(input())

for _ in range(n):
    m, *score = [int(i) for i in input().split(' ')]
    mean = sum(score)/float(m)
    remain = len([i for i in score if i > mean])
    print(f"{100*remain/float(m):.3f}%")
