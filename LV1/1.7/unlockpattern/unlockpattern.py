def eu_dist(x, y):
    return (x*x + y*y)**(0.5)


patt = [[int(i) for i in input().split(' ')] for _ in range(3)]
co_or = [(patt[i][j], (i, j)) for j in range(3) for i in range(3)]
seq = [x[1] for x in sorted(co_or, key=lambda x: x[0])]

dis = 0
for i in range(8):
    dis += eu_dist(seq[i][0]-seq[i+1][0], seq[i][1]-seq[i+1][1])
print(dis)
