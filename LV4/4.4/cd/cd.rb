loop do
  a, b = gets.split.map(&:to_i)
  break if a.zero? && b.zero?

  aa = (1..a).map { gets.to_i }
  idx = 0
  cnt = 0

  b.times do
    bb = gets.to_i
    idx += 1 while idx < a && bb > aa[idx]
    cnt += 1 if idx < a && bb == aa[idx]
  end

  puts cnt
end
