a, b = gets.split.map(&:to_i)
diff = a - b

p = 'piece'
p += 's' if diff.abs > 1

if diff > 0
  puts "Dr. Chaz needs #{diff} more #{p} of chicken!"
else
  puts "Dr. Chaz will have #{-diff} #{p} of chicken left over!"
end
