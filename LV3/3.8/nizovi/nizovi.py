line = input()

l = len(line)
d = 1
i = 1

print("{")
while i < l-1:
    if line[i] == "{":
        msg = "  "*d + "{"
        d += 1
    elif line[i] == "}":
        d -= 1
        msg = "  "*d + "}"
    else:
        msg = "  "*d + line[i]

        while line[i+1] not in ",}":
            msg += line[i+1]
            i += 1

    if line[i+1] == ",":
        msg += ","
        i += 1

    print(msg)
    i += 1

print("}")
