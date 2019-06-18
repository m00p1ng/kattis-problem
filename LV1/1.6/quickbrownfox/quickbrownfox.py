n = int(input())

for _ in range(n):
    visited = [False]*26
    line = input()
    for c in line:
        if c.isalpha():
            visited[ord(c.lower())-ord('a')] = True

    if all(visited):
        print("pangram")
    else:
        ans = [chr(i+ord('a')) for i, c in enumerate(visited) if not c]
        print(f"missing {''.join(ans)}")
