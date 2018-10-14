_ = gets
num = gets.split.map(&:to_i).select { |x| x >= 0 }
puts num.sum.to_f / num.size
