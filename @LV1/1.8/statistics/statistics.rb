ts = 0
STDIN.each_line do |line|
  ts += 1
  line = line.split.map(&:to_i).drop(1)
  a, b = line.minmax
  puts "Case #{ts}: #{a} #{b} #{b - a}"
end
