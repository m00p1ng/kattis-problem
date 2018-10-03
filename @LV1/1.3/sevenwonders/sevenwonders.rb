DECK = ['T', 'C', 'G']

find_min = ->(s) { DECK.map(&->(x) { s.count(x) } ).min }
calc_card = ->(s) { DECK.map(&-> (x) { s.count(x)**2 }).sum }

card = gets
puts calc_card.call(card) + 7*find_min.call(card)
