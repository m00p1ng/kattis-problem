import re

s = input()
ans = re.sub(r'(\w)\1+', r'\1', s)

print(ans)
