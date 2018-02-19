def turn(board)
  turn_executed = false
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  validity = valid_move?(board, index)
  
  while validity == false
    puts "Not a valid move, please try again. Enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    validity = valid_move?(board, index)
  end
  
  if validity == true
    move(board, index, "X")
    display_board(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  index = input.to_i - 1
  return index
end

def occupied?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == nil
    return false
  elsif board[index] ==""
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index < 9 && index >= 0
    if occupied?(board, index) == false
      return true
    else
      return false
    end
  else 
    return false
  end
end

def move(board, index, player_symbol)
    board[index] = player_symbol
end
