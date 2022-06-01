# frozen_string_literal: true

# 1.Class Player
#   -> Allow the creation of player
class Player
  attr_accessor :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end
end

# Initialize the player and assign player 1 as the first player
player_1 = Player.new('Player 1', 'X')
player_2 = Player.new('Player 2', 'O')
current_player = player_1

# 2.Class Board
#   -> Create the board
#   -> Display board
class Board
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  # Display the board
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts '---------'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts '---------'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
end
# Initialize the Game board and display it
board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
board = Board.new(board_array)
board.display_board

# 3. Game function
define_method('play') do
  # Prompt the user for a selection
  print 'Please make a selection with the available number: '
  selection = gets.chomp

  # Make sure the player selection is a valide one between 1 and 9
  while selection.to_i < 1 || selection.to_i > 9
    print 'Please make a selection with the available number: '
    selection = gets.chomp
  end

  # If user selection on the board is already filled return
  unless board.board[selection.to_i - 1] == player_1.mark || board.board[selection.to_i - 1] == player_2.mark
    board.board[selection.to_i - 1] = current_player.mark
    # Check winner method will go here
    current_player == player_1 ? (current_player = player_2) : (current_player = player_1)
    board.display_board
  end
  play
end
play
