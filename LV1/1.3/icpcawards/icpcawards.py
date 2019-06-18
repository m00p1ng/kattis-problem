n = int(input())
uv = set()
l = []

for _ in range(n):
    u, t = input().split(" ")
    if u not in uv:
        uv.add(u)
        l.append(f"{u} {t}")

print("\n".join(l[:12]))
