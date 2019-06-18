l = 1
r = 1001

loop do
  m = (l + r) / 2
  puts m
  STDOUT.flush
  ans = gets.chomp

  break if ans == 'correct'

  if ans == 'lower'
    r = m
  elsif ans == 'higher'
    l = m
  end
end
