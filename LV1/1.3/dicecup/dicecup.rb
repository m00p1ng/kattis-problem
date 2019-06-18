n, m = gets.split.map(&:to_i)

m, n = n, m if m > n
(m + 1..n + 1).each { |i| puts i }
