c = gets.to_f
n = gets.to_i

ans = 0
n.times do
  w, h = gets.split.map(&:to_f)
  ans += w * h
end

puts ans * c
