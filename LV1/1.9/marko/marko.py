def trans_num(s):
    number = "22233344455566677778889999"

    return ''.join([number[ord(c)-ord('a')] for c in s])


n = int(input())

ans = [trans_num(input()) for _ in range(n)]
p = input()

print(ans.count(p))
