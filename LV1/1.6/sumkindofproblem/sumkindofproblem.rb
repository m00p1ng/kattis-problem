n = gets.to_i

n.times do
  k, r = gets.split.map(&:to_i)
  sum_r = r * (r + 1) / 2
  puts "#{k} #{sum_r} #{2 * sum_r - r} #{2 * sum_r}"
end
