_ = gets

ans = gets.chomp.split.map(&:to_i).select { |n| n < 0 }
puts ans.size
