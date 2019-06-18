loop do
  a, b = gets.split.map(&:to_i)

  break if a.zero? && b.zero?

  if a + b == 13
    puts 'Never speak again.'
  elsif a == b
    puts 'Undecided.'
  elsif a > b
    puts 'To the convention.'
  else
    puts 'Left beehind.'
  end
end
