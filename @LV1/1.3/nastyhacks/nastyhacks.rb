n = gets.to_i

n.times do
  r, e, c = gets.split.map(&:to_i)
  diff = e - r

  if diff == c
    puts 'does not matter'
  elsif diff > c
    puts 'advertise'
  else
    puts 'do not advertise'
  end
end
