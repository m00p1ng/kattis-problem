def exp_val(a, b, c, d):
    l1 = list(range(a, b+1))
    l2 = list(range(c, d+1))
    return sum(l1)/len(l1) + sum(l2)/len(l2)


l1 = [int(i) for i in input().split(' ')]
l2 = [int(i) for i in input().split(' ')]

exp1 = exp_val(*l1)
exp2 = exp_val(*l2)

if exp1 == exp2:
    print("Tie")
elif exp1 > exp2:
    print("Gunnar")
else:
    print("Emma")
