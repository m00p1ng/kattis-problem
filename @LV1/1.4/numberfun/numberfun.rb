def solveable(a, b, c)
  [a + b, a * b, (a - b).abs, a / b.to_f, b / a.to_f].any? { |x| x == c }
end

n = gets.to_i

lines = (1..n).map { gets.split.map(&:to_i) }
puts lines.map { |x| solveable(*x) ? 'Possible' : 'Impossible' }
