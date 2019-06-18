_, t = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

ans = 0
total = 0

l.each do |i|
  total += i
  break if total > t

  ans += 1
end

puts ans
