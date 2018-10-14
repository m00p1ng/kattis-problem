_ = input()
num = [int(x) for x in input().split(' ') if int(x) >= 0]
print(sum(num)/len(num))
