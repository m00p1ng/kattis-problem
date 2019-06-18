def gen_fac
  limit = 1_000_000
  fac = [1] * (limit + 1)
  (2..limit + 1).each do |i|
    ans = fac[i - 1] * i
    ans /= 10 while (ans % 10).zero?
    fac[i] = ans % limit
  end
  fac
end

fac = gen_fac

loop do
  n = gets.to_i

  break if n.zero?

  puts fac[n] % 10
end
