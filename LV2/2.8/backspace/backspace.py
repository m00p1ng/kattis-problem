line = input()
out = ['']*1_000_000
cnt = 0

for ch in line:
    if ch == '<':
        if cnt > 0:
            cnt -= 1
    else:
        out[cnt] = ch
        cnt += 1

print(''.join(out[:cnt]))
