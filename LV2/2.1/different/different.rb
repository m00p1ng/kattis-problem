STDIN.each_line do |line|
  (a, b) = line.split.map(&:to_i)
  puts((a - b).abs)
end
