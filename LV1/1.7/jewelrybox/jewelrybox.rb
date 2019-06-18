def find_height(a, b)
  ((a + b) - ((a + b)**2 - 3 * a * b)**0.5) / 6
end

def max_volumn(a, b)
  m_h = find_height(a, b)
  m_h * (a - 2 * m_h) * (b - 2 * m_h)
end

n = gets.to_i
inp = (1..n).map { gets.split.map(&:to_i) }
inp.map { |a, b| puts max_volumn(a, b) }
