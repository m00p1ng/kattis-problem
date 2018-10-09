_ = gets
exam = gets.chomp.chars

a = ('ABC' * 40).chars
b = ('BABC' * 25).chars
g = ('CCAABB' * 20).chars
score_pack = a.zip(b, g)
score = [0, 0, 0]

exam.zip(score_pack) do |pack|
  res = pack[1].map { |p| p == pack[0] && 1 || 0 }
  score = score.zip(res).map(&:sum)
end

name = ['Adrian', 'Bruno', 'Goran']
max_score = score.max

puts max_score
ans = score.zip(name).select { |sc, *| sc == max_score }.map { |*, na| na }
puts ans.join("\n")
