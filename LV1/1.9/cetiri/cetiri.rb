l = gets.split.map(&:to_i).sort

d1 = l[1] - l[0]
d2 = l[2] - l[1]

if d1 == d2
  puts l[2] + d1
elsif d1.abs > d2.abs
  puts l[0] + d1 / 2
else
  puts l[1] + d2 / 2
end
