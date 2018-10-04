def quadrant(x, y)
  if x > 0 && y > 0
    1
  elsif x < 0 && y > 0
    2
  elsif x < 0 && y < 0
    3
  else
    4
  end
end

x = gets.chomp.to_i
y = gets.chomp.to_i
puts quadrant(x, y)
