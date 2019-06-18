n = gets.to_i
pat = 'simon says '

n.times do
  line = gets

  if line[/^#{pat}/]
    puts line.sub(pat, '')
  else
    puts
  end
end
