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
player1 = Player.new('Player 1', 'X', 0)
player2 = Player.new('Player 2', 'O', 0)
current_user = player1

class Board
  def initialize; end

  def CreateBoard
    puts '  |' + ' |'
  end
end

#
#   1. At run time create the player
#     1.1. Create a user class
#     1.2. Create two user
#     1.3 Assign current user variable as player one
#
#   2. Display the game board with some code in the middle as a reference for the user to select it's move
#     2.1. Create a class for the Game Board and create an instance at run time filled with the default value
#
#   3. Ask the user to select it's move if the case if available allow it, otherwise ask again with an error message
#     3.1. Ask the user for it's selection
#     3.2. Loop trought the board and check if the value is available if it is replace it with the current user symbol
#     3.3. Else Ask for another selection
#
#   4. When the user move is valide change the current player then redisplay the board with the new ui and check for a winner
#     4.1.
#
#   5. Ask the player two to do it's move
#
#
#   6. Repeat step 1 trought 5 until either one of the two player win, or the full board is full
#
