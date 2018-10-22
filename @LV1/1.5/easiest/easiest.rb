def sum_digit(n)
  ans = 0
  temp = n

  while temp > 0
    ans += temp % 10
    temp /= 10
  end

  ans
end

loop do
  n = gets.to_i
  break if n.zero?

  i = 11
  sum_n = sum_digit(n)

  loop do
    sum_i = sum_digit(n * i)
    break if sum_i == sum_n

    i += 1
  end
  puts i
end
