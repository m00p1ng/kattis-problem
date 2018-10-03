n = gets.to_i

price = (1..n).map { gets.to_i }.sort.reverse
price += [0] * (3 - price.size % 3)

total = (0..n).step(3).map { |x| price.slice(x, x + 2).sum }

puts total
