n = gets.chomp
b = n.length

if b < 4
  fac = [0, 1, 2, 6, 24, 120, 720]
  n = n.to_i

  fac.each_with_index do |f, i|
    puts i if n == f
  end
else
  a = 0
  i = 1
  while a.ceil != b
    a += Math.log10(i)
    i += 1
  end
  puts i - 1
end
