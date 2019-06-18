score = (1..5).map { gets.split.map(&:to_i).sum }
max_val = score.max
puts "#{score.index(max_val) + 1} #{max_val}"
