score = [sum([int(i) for i in input().split(" ")]) for _ in range(5)]
max_val = max([(v, i+1) for i, v in enumerate(score)])
print(max_val[1], max_val[0])
