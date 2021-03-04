# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # <---- Rows
  [3, 4, 5], # <
  [6, 7, 8], # <
  [0, 3, 6], # <---- Columns
  [1, 4, 7], # <
  [2, 5, 8], # <
  [0, 4, 8], # <---- Diags
  [2, 4, 6]  # <
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return combo
    end
  end
  return false
end

def full?(board)
  if board.include?(" ") || board.include?("")
    return false
  end
  return true
end

def draw?(board)
  if full?(board) && won?(board)
    return false
  elsif not full?(board) && not won?(board)
  return true
end
