h, v = gets.split.map(&:to_i)
ans = h / Math.sin(v / 180.0 * Math::PI)

puts ans.ceil
