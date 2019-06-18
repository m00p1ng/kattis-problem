n = int(input())
a = int(input(), 2)
b = int(input(), 2)
out = a + b

if n % 2 == 0 and a == b or (out+1) & out == 0 and out != 0:
    print("Deletion succeeded")
else:
    print("Deletion failed")
