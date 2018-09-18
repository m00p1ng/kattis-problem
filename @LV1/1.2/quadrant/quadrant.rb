def quadrant(x, y)
  if x > 0 and y > 0
    return 1 
  elsif x < 0 and y > 0
    return 2
  elsif x < 0 and y < 0
    return 3
  else 
    return 4 
  end
end

x = gets.chomp.to_i
y = gets.chomp.to_i
puts quadrant(x, y)