loop do
  a, b = gets.split.map(&:to_i)
  break if a.zero? && b.zero?

  puts "#{a/b} #{a%b} / #{b}"
end
