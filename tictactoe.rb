require './board'
# is a separate Player class really necessary?
# maybe when we get to AI
require './player'

class Game
  def initialize
    @board = Board.new
    @player_x = Player.new('x')
    @player_o = Player.new('o')
  end

  def board
    @board
  end

  def insert_x(a,b)
    @board.insert('x', a, b)
  end

  def insert_o(a,b)
    @board.insert('o', a, b)
  end

  def prompt(sym)
    print "Player #{sym}, enter coordinates: "
    coords = gets
  end

  def play
    counter = 0
    loop do
      if counter % 2 = 0
        insert_x(prompt('x'))
      else
        insert_o(prompt('o'))
      end
      # play
      counter += 1
    end
  end
      
  # turns?
  # prompt each player for coordinates
  # a loop of play?
  # recognize when a player wins
  # AI
end
