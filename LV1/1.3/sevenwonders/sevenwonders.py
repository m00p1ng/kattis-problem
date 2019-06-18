def find_min(s):
    return min([s.count(i) for i in DECK])


def calc_card(s):
    return sum([s.count(i)**2 for i in DECK])


DECK = ['T', 'C', 'G']
card = input()
print(calc_card(card) + 7*find_min(card))
