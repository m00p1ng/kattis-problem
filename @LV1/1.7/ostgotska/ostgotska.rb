s = gets.chomp.split
ae = s.select { |x| x[/ae/] }

if ae.size.to_f / s.size * 100 >= 40
  puts 'dae ae ju traeligt va'
else
  puts 'haer talar vi rikssvenska'
end
