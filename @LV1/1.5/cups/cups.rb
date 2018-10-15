n = gets.to_i

l = []
n.times do
  a, b = gets.split

  if a =~ /(\d)+/
    l.push([a.to_i, b])
  else
    l.push([2 * b.to_i, a])
  end
end

l.sort.map { |ans| puts ans[1] }
