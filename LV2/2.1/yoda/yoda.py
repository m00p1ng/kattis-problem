a = [x for x in input()]
b = [x for x in input()]

l_a = len(a)
l_b = len(b)

diff = abs(l_a-l_b)

if l_a > l_b:
    b = ['0']*diff + b
elif l_b > l_a:
    a = ['0']*diff + a


for i in range(len(a)):
    if a[i] < b[i]:
        a[i] = ''
    elif b[i] < a[i]:
        b[i] = ''

a = ''.join(a)
b = ''.join(b)

if len(a):
    print(int(a))
else:
    print("YODA")

if len(b):
    print(int(b))
else:
    print("YODA")
