ts = int(input())

for t in range(ts):
    n, m = [int(i) for i in input().split(' ')]
    image = [[x for x in input()] for _ in range(n)]

    print(f"Test {t+1}")
    for i in range(n):
        print(''.join(image[n-i-1])[::-1])
