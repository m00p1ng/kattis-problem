op = ['+', '-', '*', '//']
combi_op = [(i, j, k) for i in op for j in op for k in op]
ans = {}


def gen_ans():
    for line in combi_op:
        eq = f"4 {' 4 '.join(line)} 4"
        val = eval(eq)
        ans[val] = f"{eq.replace('//', '/')} = {val}"


gen_ans()
n = int(input())

for _ in range(n):
    m = int(input())
    if m in ans:
        print(ans[m])
    else:
        print("no solution")
