def fizzbuzz(n, x, y)
  mx = (n % x).zero?
  my = (n % y).zero?

  case
    when (mx && my) then 'FizzBuzz'
    when mx then 'Fizz'
    when my then 'Buzz'
    else n
  end
end

x, y, n = gets.split.map(&:to_i)

(1..n).each { |i| puts fizzbuzz(i, x, y) }
