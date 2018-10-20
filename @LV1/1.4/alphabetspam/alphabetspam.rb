s = gets.chomp

l = [0] * 4

s.each_char do |i|
  if i == '_'
    l[0] += 1
  elsif i =~ /[a-z]/
    l[1] += 1
  elsif i =~ /[A-Z]/
    l[2] += 1
  else
    l[3] += 1
  end
end

l.each { |i| puts i.to_f / s.size }
