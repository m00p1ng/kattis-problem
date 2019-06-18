n = gets.to_i

(1..n).each do |ts|
  * = gets
  c = gets.split

  ans = c.uniq.map { |x| [c.count(x), x] }.select { |a, *| a == 1 }

  print "Case ##{ts}:"
  ans.map { |*, y| print " #{y}" }
  puts
end
