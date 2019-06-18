n = gets.to_i
soy = (1..n).map { gets.to_f }
soy.map { |x| puts((x / 400).ceil) }
