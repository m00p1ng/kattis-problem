require 'set'

n = gets.to_i
uv = Set[]
l = []

n.times do
  u, t = gets.split
  unless uv.include?(u)
    uv.add(u)
    l.push("#{u} #{t}")
  end
end

puts l[0...12].join("\n")
