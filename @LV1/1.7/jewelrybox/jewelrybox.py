def find_height(a, b):
    return ((a+b) - ((a+b)**2 - 3*a*b)**0.5)/6


def max_volumn(a, b):
    m_h = find_height(a, b)
    return m_h * (a-2*m_h)*(b-2*m_h)


n = int(input())
inp = [[int(i) for i in input().split(' ')] for _ in range(n)]
[print(max_volumn(*i)) for i in inp]
