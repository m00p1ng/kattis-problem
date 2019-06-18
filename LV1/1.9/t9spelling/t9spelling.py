number = "22233344455566677778889999"
times = "12312312312312312341231234"

n = int(input())

for i in range(1, n+1):
    text = input()
    out = ""
    last = -1

    for c in text:
        idx = ord(c)-ord('a')
        num = "0"
        if idx >= 0:
            num = number[idx]

        if last == num:
            out += " "

        if num == "0":
            out += "0"
        else:
            out += number[idx]*int(times[idx])

        last = num

    print(f'Case #{i}: {out}')
