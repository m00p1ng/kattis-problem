n = gets.to_i

n.times do
  a = gets.chomp
  b = gets.chomp

  ans = a.chars.zip(b.chars).map{ |x,y| x == y ? '.' : '*' }
  puts a, b, ans.join
  puts
end