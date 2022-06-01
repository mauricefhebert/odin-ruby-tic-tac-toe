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

module PlayerModule
  player1 = Player.new('Player 1', 'X')
  player2 = Player.new('Player 2', 'O')
  current_user = player1

  def change_player()
    current_user == player2 ? current_user = player1 : current_user = player2
  end
end



# Board creation and display
board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts '---------'
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts '---------'
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end
display_board(board)

def play_round()
  include PlayerModule
  print 'Please make a selection with the available number: '
  player_selection = gets
  display_board(board)
  change_player()
  board.each do |square|
    if square != 'X' || square != 'O'
      board[player_selection - 1] = current_user.symbol
      display_board(board)
    end
  end
end

play_round()