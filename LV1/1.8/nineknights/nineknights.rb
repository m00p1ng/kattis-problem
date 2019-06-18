def vaild_bound?(i, j)
  i >= 0 && j >= 0 && i < 5 && j < 5
end

def gen_new_pos(i, j)
  pos = [[-1, 2], [1, 2], [-1, -2], [1, 2], [2, -1], [2, 1], [-2, -1], [-2, 1]]
  pos.map { |ni, nj| [i + ni, j + nj] }
end

def check_pos(board, i, j)
  gen_new_pos(i, j).each do |ni, nj|
    next unless vaild_bound?(ni, nj)
    return true if board[ni][nj] == 'k'
  end
  false
end

def can_attack(board)
  [*0..4].product([*0..4]).each do |i, j|
    if board[i][j] == 'k'
      return true if check_pos(board, i, j)
    end
  end
  false
end

board = (1..5).map { gets }
n_k = board.map { |l| l.count('k') }.sum

is_valid = n_k == 9
is_valid = !can_attack(board) if is_valid

puts is_valid ? 'valid' : 'invalid'
