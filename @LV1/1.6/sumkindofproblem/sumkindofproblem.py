n = int(input())

for _ in range(n):
    k, r = [int(i) for i in input().split(' ')]
    sum_r = r*(r+1)//2
    print(f"{k} {sum_r} {2*sum_r-r} {2*sum_r}")
