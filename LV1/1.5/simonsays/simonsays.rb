n = gets.to_i
pat = 'Simon says'

n.times do
  line = gets.chomp
  puts line.sub(pat, '').strip if line[/^#{pat}/]
end
