while line = gets
  n = line.split.map(&:to_i).sum
  puts n / 2
end
