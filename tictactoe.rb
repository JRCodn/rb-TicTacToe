  WIN =
    [[0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]]


BOARD = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']



def display_board(board)
  puts "      #{BOARD[0]}|#{BOARD[1]}|#{BOARD[2]}"
  puts '      -----'
  puts "      #{BOARD[3]}|#{BOARD[4]}|#{BOARD[5]}"
  puts '      -----'
  puts "      #{BOARD[6]}|#{BOARD[7]}|#{BOARD[8]}"
end

def player_positions(player, position,board)
  BOARD[position] = player
end

# Check if position available

# Check if draw if all squares are full



def win_game(board, player)
  win = false
  WIN.each do |value|
    count = 0
    value.each do |marker|
      count += 1 if BOARD[marker] == player
      win = true if count == 3
    end
  end
  win
end

def start_game
  player = "X"

  puts 'Welcome to the game of Tic Tac Toe'
  loop do
    puts "Player #{player}, please choose a position from 1-9"
    position = gets.chomp!.to_i - 1
    player_positions(player,position,BOARD)
    display_board(BOARD)
    if win_game(BOARD, player)
      puts "Player #{player} wins!"
      break
    end
  end
end

start_game
