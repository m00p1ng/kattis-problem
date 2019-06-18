n = gets.to_i
ans = 0

n.times do
  a, b = gets.split.map(&:to_f)
  ans += a * b
end

puts ans
