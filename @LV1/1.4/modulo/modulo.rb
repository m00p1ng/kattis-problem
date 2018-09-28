visited = [0]*42
while n = gets
  visited[n.to_i % 42] = 1
end

puts visited.sum