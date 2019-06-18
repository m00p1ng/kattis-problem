n = int(input())

room = {}

for _ in range(n):
    cmd, name = input().split(' ')
    if cmd == "entry":
        msg = f"{name} entered"
        if name in room and room[name]:
            msg += " (ANOMALY)"
        room[name] = True
    else:
        msg = f"{name} exited"
        if name not in room or name in room and not room[name]:
            msg += " (ANOMALY)"
        room[name] = False

    print(msg)
