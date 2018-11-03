loop do
  l = gets.split.map(&:to_i).sort

  break if l.map(&:zero?).all?

  if l[0]**2 + l[1]**2 == l[2]**2
    puts 'right'
  else
    puts 'wrong'
  end
end
