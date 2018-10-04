n = gets.to_i

n.times do
  m = gets.to_i
  ans = (1..m).map { gets }
  puts ans.uniq.size
end
