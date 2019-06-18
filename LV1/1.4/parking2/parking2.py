n = int(input())

for _ in range(n):
    m = int(input())
    park = [int(i) for i in input().split(' ')]
    print(2*(max(park) - min(park)))
