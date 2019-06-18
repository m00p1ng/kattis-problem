require 'set'

line = gets.split
puts line.size == line.to_set.size ? 'yes' : 'no'
