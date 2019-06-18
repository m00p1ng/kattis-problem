n = gets.to_i
a = gets.to_i(2)
b = gets.to_i(2)
out = a + b

if (n % 2).zero? && a == b || ((out + 1) & out).zero? && out != 0
  puts 'Deletion succeeded'
else
  puts 'Deletion failed'
end
