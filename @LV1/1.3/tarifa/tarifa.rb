x = gets.to_i
n = gets.to_i

total = ((1..n).map { gets.to_i }).sum
puts n*x + x - total
