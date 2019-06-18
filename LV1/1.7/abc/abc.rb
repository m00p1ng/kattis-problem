l = gets.split.map(&:to_i).sort
o = gets.chomp.split(//).map { |c| c.ord - 'A'.ord }

o.each { |i| print "#{l[i]} " }
