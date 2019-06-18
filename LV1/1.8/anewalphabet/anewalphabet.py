DICT = {
    'a': '@',
    'b': '8',
    'c': '(',
    'd': '|)',
    'e': '3',
    'f': '#',
    'g': '6',
    'h': '[-]',
    'i': '|',
    'j': '_|',
    'k': '|<',
    'l': '1',
    'm': '[]\/[]',
    'n': '[]\[]',
    'o': '0',
    'p': '|D',
    'q': '(,)',
    'r': '|Z',
    's': '$',
    't': '\'][\'',
    'u': '|_|',
    'v': '\/',
    'w': '\/\/',
    'x': '}{',
    'y': '`/',
    'z': '2',
}


def tranform(ch):
    ch = ch.lower()
    if ch in DICT:
        return DICT[ch]
    else:
        return ch


ans = [tranform(ch) for ch in input()]

print("".join(ans))
