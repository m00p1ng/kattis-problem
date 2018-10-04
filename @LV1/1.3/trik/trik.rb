a = 1
b = 0
c = 0

s = gets.chomp

s.each_char do |act|
  if act == 'A'
    a, b = b, a
  elsif act == 'B'
    b, c = c, b
  else
    a, c = c, a
  end
end

if !a.zero?
  puts 1
elsif !b.zero?
  puts 2
else
  puts 3
end
