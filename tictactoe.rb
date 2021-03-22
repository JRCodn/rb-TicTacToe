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


# player_positions("X", 5, BOARD)

# p BOARD

# player_positions("O", 4, BOARD)

# p BOARD

# display_board(board)

def win_game(board, player)
  win = false
  WIN.each do |value|
    count = 0
    value.each do |marker|
      if BOARD[marker] == player
        count += 1
      end
      if count == 3
        win = true
        break
      end
    end
  end
  win
end

def start_game
  player = "X"

  puts 'Welcome to the game of Tic Tac Toe'
  loop do
    puts "Player #{player}, please choose a position from 1-9"
    position = gets.chomp!.to_i
    player_positions(player,position,BOARD)
    display_board(BOARD)
    if win_game(BOARD, player)
      puts "Player #{player} wins!"
      break
    end
  end
end

start_game
