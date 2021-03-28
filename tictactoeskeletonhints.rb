# Make a tic tac toe game using class

class TicTacClass
  # Initialize new game
  def initialize
    @player = "X"
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @position = 0
    @win =  [[0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [6,4,2]]
    @winner = false
    @draw = false
  end

  # Check the postion by striping white space from board postion and checking
  # if it is empty or not.
  def position_available

  end

  # Display a board with current postions, clear screen everytime you refresh
  # board
  def display_board
  system("clear")
  puts "      #{@board[0]}|#{@board[1]}|#{@board[2]}"
  puts '      -----'
  puts "      #{@board[3]}|#{@board[4]}|#{@board[5]}"
  puts '      -----'
  puts "      #{@board[6]}|#{@board[7]}|#{@board[8]}"
  end

  # Changes the board array to be the position of player
  def player_positions

  end

  # Checks for draw by joining board array deleting any white space and
  # checking length
  def draw

  end

  # Check if game is won by checking every winnable row and seeing if they're
  # the same value. Use .strip on one to remove a whitespace if there is one,
  # or else it would return true for a win row being all white spaces
  def win_game

  end

  # Changes player over
  def next_player

  end

  # Gets the user input checks if its an integer between 1 and 9
  # if not return not_valid and repeat
  def turn

  end

 # returns board and a message then return turn to loop back.
  def not_valid

  end

  #Loop the game by calling methods until someone wins or draw
  def start_game

  end
end
