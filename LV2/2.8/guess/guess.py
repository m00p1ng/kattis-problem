l = 1
r = 1001

while True:
    m = (l+r)//2
    print(m)
    ans = input()

    if ans == "correct":
        break

    if ans == "lower":
        r = m
    elif ans == "higher":
        l = m
