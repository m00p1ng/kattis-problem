a, b = gets.split.map(&:to_i)

b -= 45
if b < 0
  b += 60
  a -= 1
end

a = 23 if a < 0

puts "#{a} #{b}"
