visited = [0] * 42
STDIN.each_line do |n|
  visited[n.to_i % 42] = 1
end

puts visited.sum
