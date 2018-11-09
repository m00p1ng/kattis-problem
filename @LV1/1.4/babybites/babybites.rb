_ = gets
l = gets.split
cnt = 1
is_valid = true

l.each do |i|
  if i != 'mumble' && i != cnt.to_s
    is_valid = false
    break
  end
  cnt += 1
end

if is_valid
  puts 'makes sense'
else
  puts 'something is fishy'
end
