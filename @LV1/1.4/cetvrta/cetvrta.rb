x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

x = if x1 == x2
      x3
    elsif x1 == x3
      x2
    else
      x1
    end

y = if y1 == y2
      y3
    elsif y1 == y3
      y2
    else
      y1
    end

puts "#{x} #{y}"
