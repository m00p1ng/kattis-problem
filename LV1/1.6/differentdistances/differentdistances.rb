loop do
  line = gets.split

  break if line.size == 1

  x1, y1, x2, y2, p = line.map(&:to_f)
  ans = ((x1 - x2).abs**p + (y1 - y2).abs**p)**(1 / p)
  puts ans
end
