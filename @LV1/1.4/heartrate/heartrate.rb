n = gets.to_i

n.times do
  line = gets.split
  b, p = line[0].to_i, line[1].to_f

  bpm = 60*b/p
  abpm = 60/p
  puts "#{bpm-abpm} #{bpm} #{bpm+abpm}"
end