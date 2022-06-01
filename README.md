# odin-ruby-tic-tac-toe

## Humans:

- How do we see Tic Tac Toe?
- The board has 9 empty squares
- There are 2 pieces of tokens — X and O
- There are only 2 players
- How do we play Tic Tac Toe?
- Players take turns playing
- 1st turn — Player 1
- Player 1 places their token (X) in only 1 square of their choice
- 2nd turn — Player 2
- Player 2 places their token (O) in only 1 square of their choice, except they can’t touch the square that Player 1’s token already fills
- 3rd turn- Player 1 …. and the cycle continues until a player wins or there’s a tie game
- There are 8 winning combinations: Top row, Middle row, Bottom row, Left column, Middle column, Right column, Left diagonal, and Right diagonal
- There’s a draw/tie when the entire board is filled with X’s and O’s but no winning combinations can be found

In short, the above outline is our pseudocode. Writing things/instructions in simple, plain english or descriptors can help us figure out how to write code for the program.

## CLI/Programs

### How do CLI/Programs see Tic Tac Toe?

The board has 9 empty squares => The board is an array of 9 empty strings
[“ ”, “ ”, “ ”, “ ”, “ ”, “ ”, “ ”, “ ”, “ ”,]

- There are 2 pieces of tokens — X and O => X and O
- There are only 2 players => What is a player/How do we define a player
- How do CLI/Programs play Tic Tac Toe?
- Players take turns playing => Define what a turn is; how will a player take turns playing?
- 1st turn — Player 1 …. and the cycle continues until a player wins or there’s a tie game => iterate the game playing where players take turns; a player can’t place a token on a - square that’s already taken
- There are 8 winning combinations: Top row, Middle row, Bottom row, Left column, Middle column, Right column, Left diagonal, and Right diagonal => Define those combinations
- There’s a draw/tie when the entire board is filled with X’s and O’s but no winning combinations can be found => Define what a draw/tie is; define what a filled board is
