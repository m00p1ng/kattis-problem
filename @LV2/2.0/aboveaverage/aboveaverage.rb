n = gets.to_i

n.times do
  m, *score = gets.split.map(&:to_f)
  mean = score.sum / m
  remain = score.select { |i| i > mean }
  puts "#{format('%.3f', 100 * (remain.size / m))}%"
end
