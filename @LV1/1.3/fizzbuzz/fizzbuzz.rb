def fizzbuzz(n, x, y)
  mx = n % x == 0
  my = n % y == 0

  case
    when (mx and my) then "FizzBuzz"
    when mx then "Fizz"
    when my then "Buzz"
    else n
  end
end

x, y, n = gets.split.map(&:to_i)

(1..n).each { |i| puts fizzbuzz(i, x, y) }