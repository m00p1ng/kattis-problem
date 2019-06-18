n = int(input())

for _ in range(n):
    s = input()
    m_root = int(len(s)**0.5)
    sq = [[x for x in s[m_root*i:m_root*(i+1)]] for i in range(m_root)]
    tmp = [[sq[j][m_root-i-1] for j in range(m_root)] for i in range(m_root)]
    tmp = [''.join(l) for l in tmp]
    print(''.join(tmp))
