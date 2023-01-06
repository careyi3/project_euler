# frozen_string_literal: true

module Problem15
  GRID_SIZE = 21
  def self.run(_)
    grid = Array.new(GRID_SIZE) { Array.new(GRID_SIZE) { '.' } }
    cache = {}
    count = walk(grid, cache, 0, 0, 1)
    puts count
  end

  def self.walk(grid, cache, x, y, length)
    return cache["#{x}:#{y}:#{length}"] unless cache["#{x}:#{y}:#{length}"].nil?

    grid[y][x] = '#'
    print(grid)
    return 1 if x == GRID_SIZE - 1 && y == GRID_SIZE - 1

    if x + 1 < GRID_SIZE
      right = walk(grid, cache, x + 1, y, length + 1)
      grid[y][x + 1] = '.'
    end
    if y + 1 < GRID_SIZE
      down = walk(grid, cache, x, y + 1, length + 1)
      grid[y + 1][x] = '.'
    end

    cache["#{x}:#{y}:#{length}"] = (right || 0) + (down || 0)
    cache["#{x}:#{y}:#{length}"]
  end

  def self.print(grid)
    Visualisation.print_grid(grid, centre_x: 15, centre_y: 15, x_dim: 30, y_dim: 30, sleep: 0.015, colour_char: '#', colour: :red)
  end
end
