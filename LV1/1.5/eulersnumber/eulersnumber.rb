def gen_eulers
  fac = [0.0] * 10_001
  euler = [0.0] * 10_001
  fac[0] = fac[1] = 1.0
  euler[0] = 1.0
  euler[1] = 2.0

  (2..10_001).each do |i|
    fac[i] = fac[i - 1] * i
    euler[i] = euler[i - 1] + 1 / fac[i]
  end

  euler
end

euler = gen_eulers
n = gets.to_i

puts euler[n]
