n = gets.to_i

n.times do
  _ = gets.to_i
  park = gets.split.map(&:to_i)
  puts 2 * (park.max - park.min)
end
