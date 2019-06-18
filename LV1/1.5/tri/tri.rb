def find_sign(a, b, c)
  op = ['+', '-', '*', '/']

  op.each do |p|
    return [p, '='] if eval("#{a}#{p}#{b}") == c
    return ['=', p] if eval("#{b}#{p}#{c}") == a
  end
end

a, b, c = gets.split.map(&:to_i)
sign = find_sign(a, b, c)
puts "#{a}#{sign[0]}#{b}#{sign[1]}#{c}"
