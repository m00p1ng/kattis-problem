piece = [1, 1, 2, 2, 2, 8]
line = gets.split.map(&:to_i)

ans = piece.zip(line).map { |a, b| (a - b).to_s }
puts ans.join(' ')
