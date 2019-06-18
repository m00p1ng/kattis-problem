from collections import Counter

l = [a[0] for a in input().split(' ')]
cnt = Counter(l)

print(max(cnt.values()))
