from math import ceil
n = int(input())

for _ in range(n):
    s = input()
    m_root = int(ceil(len(s)**0.5))
    rem = m_root*m_root - len(s)
    s += ' '*rem
    sq = [[x for x in s[m_root*i:m_root*(i+1)]] for i in range(m_root)]
    tmp = [[sq[m_root-j-1][i] for j in range(m_root)] for i in range(m_root)]
    tmp = [''.join(l) for l in tmp]
    print(''.join(tmp).replace(' ', ''))
