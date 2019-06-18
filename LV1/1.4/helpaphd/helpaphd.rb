n = gets.to_i

n.times do
  line = gets.chomp

  if line == 'P=NP'
    puts 'skipped'
  else
    puts eval(line)
  end
end
