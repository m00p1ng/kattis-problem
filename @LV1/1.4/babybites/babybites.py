_ = input()
l = input().split()
cnt = 1

is_valid = True
for i in l:
    if i != "mumble" and i != str(cnt):
        is_valid = False
        break
    cnt += 1

if is_valid:
    print("makes sense")
else:
    print("something is fishy")
