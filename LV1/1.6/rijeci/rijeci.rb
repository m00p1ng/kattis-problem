def gen_fibo
  fib = [1] * 50
  fib[0] = 0

  (2..50).each do |i|
    fib[i] = fib[i - 1] + fib[i - 2]
  end

  fib
end

fib = gen_fibo
n = gets.to_i

puts "#{fib[n - 1]} #{fib[n]}"
