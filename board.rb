require 'byebug'

class Board
attr_accessor :grid

  def initialize
    @grid = Array.new(9) { Array.new(9) }
  end

  def populate_grid
    
  end

  def populate_bombs
    positions = []
    (0..8).each do |row|
      (0..8).each do |col|
        positions << [row, col]
      end
    end
    positions.sample(10).each do |pos|
      self[pos] = 'X'
    end
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    grid[row][col] = val
  end

  def render
    grid
  end
end
