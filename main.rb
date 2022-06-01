# frozen_string_literal: true

# Player class used to create the player and keep track of it's score
class Player
  attr_accessor :name, :symbol, :score
  def initialize(name, symbol, score = 0)
    @name = name
    @symbol = symbol
    @score = score
  end
end
$player1 = Player.new('Player 1', 'X')
$player2 = Player.new('Player 2', 'O')
$current_player = $player1

# Change the current player
def change_current_player()
  $current_player == $player1 ? $current_player = $player2 : $current_player = $player1
end

# Board creation and display
$board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end
display_board($board)

def check_winner()
  winner = false

  win_combo = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  if $board[0..2] == "X"
    puts "winner"
  end
end

check_winner()

def play_round()
  # Prompt the user for a selection
  print 'Please make a selection with the available number: '
  player_selection = gets
  
  # Make sure the player selection is a valide one between 1 and 9
  while (player_selection.to_i < 1 || player_selection.to_i > 9) do
      print 'Please make a selection with the available number: '
      player_selection = gets
  end

  # Execute the game change
    if $board[player_selection.to_i - 1] != $player1.symbol || $board[player_selection.to_i - 1] != $player2.symbol
      $board[player_selection.to_i - 1] = $current_player.symbol
      check_winner()
      change_current_player()
      display_board($board)
      play_round()
    end
  end
play_round()

