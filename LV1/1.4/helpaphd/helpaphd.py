n = int(input())

for _ in range(n):
    line = input()

    if line == "P=NP":
        print("skipped")
    else:
        print(eval(line))
