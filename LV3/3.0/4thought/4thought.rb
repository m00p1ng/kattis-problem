def gen_ans
  ans = {}
  op = ['+', '-', '*', '/']

  op.product(op, op).each do |line|
    eq = "4 #{line.join(' 4 ')} 4"
    val = eval(eq)
    ans[val] = "#{eq} = #{val}"
  end
  ans
end

ans = gen_ans
n = gets.to_i

n.times do
  m = gets.to_i
  if ans.include?(m)
    puts ans[m]
  else
    puts 'no solution'
  end
end
