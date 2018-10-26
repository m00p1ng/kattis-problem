def gcd(a, b)
  return a if b.zero?

  gcd(b, a % b)
end

a, b, tl = gets.split.map(&:to_i)

lcm = a * b / gcd(a, b)

puts tl / lcm >= 1 ? 'yes' : 'no'
