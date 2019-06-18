def check_bound(i, j)
  return true if [i < 0, j < 0, i >= $n, j >= $m].any?
  return true if $graph[i][j] == '#'

  false
end

def dfs(i, j)
  return if check_bound(i, j)

  $graph[i][j] = '#'

  dfs(i + 1, j)
  dfs(i - 1, j)
  dfs(i, j + 1)
  dfs(i, j - 1)
end

ts = 0
while line = gets
  ts += 1
  $n, $m = line.split.map(&:to_i)
  $graph = (1..$n).map { gets.chomp.chars }

  cnt = 0

  $n.times do |i|
    $m.times do |j|
      if $graph[i][j] == '-'
        dfs(i, j)
        cnt += 1
      end
    end
  end
  puts "Case #{ts}: #{cnt}"
end
