n, w, h = gets.split.map(&:to_i)

d = (w * w + h * h)**0.5

n.times do
  k = gets.to_i
  puts k <= d ? 'DA' : 'NE'
end
