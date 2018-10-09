_ = int(input())
exam = input()

a = 'ABC'*40
b = 'BABC'*25
g = 'CCAABB'*20
score_pack = zip(a, b, g)
score = [0, 0, 0]

for c in exam:
    res = [c == ans for ans in next(score_pack)]
    score = [a+b for (a, b) in zip(score, res)]

name = ["Adrian", "Bruno", "Goran"]
max_score = max(score)

print(max_score)
print("\n".join([ni for (ni, sr) in zip(name, score) if sr == max_score]))
