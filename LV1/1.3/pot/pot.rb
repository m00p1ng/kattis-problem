n = gets.chomp.to_i

ans = (1..n).map { gets.to_i }
ans = ans.map { |x| (x / 10)**(x % 10) }

puts ans.sum
