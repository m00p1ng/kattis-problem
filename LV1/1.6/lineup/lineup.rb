n = gets.to_i
bag = (1..n).map { gets }

if bag == bag.sort
  puts 'INCREASING'
elsif bag == bag.sort.reverse
  puts 'DECREASING'
else
  puts 'NEITHER'
end
