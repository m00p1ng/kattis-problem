a, b = [int(x) for x in input().split(' ')]
diff = a - b

p = "piece"
if abs(diff) > 1:
    p += 's'

if diff > 0:
    print(f"Dr. Chaz needs {diff} more {p} of chicken!")
else:
    print(f"Dr. Chaz will have {-diff} {p} of chicken left over!")
