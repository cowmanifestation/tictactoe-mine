class Board
  def initialize
    @board = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
      ]
  end

  def insert(mark, a, b)
    @board[a][b] = mark # @board[1][2] = 'x'
  end

  # def show
  #   # draw the board all nice and pretty
  # end
end
