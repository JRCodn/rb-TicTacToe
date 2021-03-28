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
def position_available(position)
  BOARD[position].strip.empty?
end

# Check if draw if all squares are full
def draw
  result = true
  BOARD.each do |x|
    if x == "X" || x == "O"
      next
    elsif x == ' '
      result = false
      break
    end
  end
  result
end

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
  system("clear")
  puts 'Welcome to the game of Tic Tac Toe'
  display_board(BOARD)
  loop do
    puts "Player #{player}, please choose a position from 1-9"
    position = gets.chomp!.to_i - 1
    if position_available(position)
      player_positions(player,position,BOARD)
    else
      p "Sorry that position is taken!"
      next
    end
    system("clear")
    display_board(BOARD)
    if win_game(BOARD, player)
      puts "Player #{player} wins!"
      break
    elsif draw
      puts "draw bitch"
      break
    end
    player = player == 'X' ? 'O' : 'X'
  end
end

start_game
