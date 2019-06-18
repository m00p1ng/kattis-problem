def calc_xor
  d = {}

  256.times do |x|
    a = (x ^ (x << 1)) & 255
    d[a] = x
  end
  d
end

d = calc_xor

_ = gets

l = gets.split.map(&:to_i)
l.map { |i| print "#{d[i]} " }
