d = {}

while True:
    line = input().split(' ')
    if len(line) != 2:
        break

    d[line[1]] = line[0]

while True:
    try:
        word = input()
        if word in d.keys():
            print(d[word])
        else:
            print("eh")
    except EOFError:
        break
