a, b = gets.split.map(&:to_i)

b -= 45
if b < 0
  b += 60
  a -= 1
end

if a < 0
  a = 23
end

puts "#{a} #{b}"
