# +----------+
# | TOO SLOW |
# +----------+
line = gets
out = [''] * 1_000_000
cnt = 0

line.each_char do |ch|
  if ch == '<'
    if cnt > 0
      cnt -= 1
    end
  else
    out[cnt] = ch
    cnt += 1
  end
end

puts out[0...cnt].join('')
