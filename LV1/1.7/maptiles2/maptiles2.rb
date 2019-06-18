s = gets.chomp.split('').map(&:to_i)

l = s.size - 1

ans_x = 0
ans_y = 0

s.each_with_index do |c, i|
  ans_x |= (1 << (l - i)) if [1, 3].include?(c)
  ans_y |= (1 << (l - i)) if [2, 3].include?(c)
end

puts "#{s.size} #{ans_x} #{ans_y}"
