# frozen_string_literal: true

module Problem11
  def self.run(path)
    grid = []
    FileReader.for_each_line(path) do |line|
      grid << line.split.map(&:to_i)
    end
    products = []
    grid.each_with_index do |row, y|
      row.each_with_index do |_, x|
        products << grid[y][x, 4].inject(:*) if x + 4 < 20
        products << grid[y][x - 4, 4].inject(:*) if x - 4 > -1
        products << (grid[y + 1][x] * grid[y + 2][x] * grid[y + 3][x] * grid[y + 4][x]) if y + 4 < 20
        products << (grid[y - 1][x] * grid[y - 2][x] * grid[y - 3][x] * grid[y - 4][x]) if y - 4 > -1
        products << (grid[y + 1][x + 1] * grid[y + 2][x + 2] * grid[y + 3][x + 3] * grid[y + 4][x + 4]) if x + 4 < 20 && y + 4 < 20
        products << (grid[y - 1][x - 1] * grid[y - 2][x - 2] * grid[y - 3][x - 3] * grid[y - 4][x - 4]) if x - 4 > -1 && y - 4 > -1
        products << (grid[y - 1][x + 1] * grid[y - 2][x + 2] * grid[y - 3][x + 3] * grid[y - 4][x + 4]) if x + 4 < 20 && y - 4 > -1
        products << (grid[y + 1][x - 1] * grid[y + 2][x - 2] * grid[y + 3][x - 3] * grid[y + 4][x - 4]) if x - 4 > -1 && y + 4 < 20
      end
    end
    puts products.max
  end

  def self.print(grid)
    Visualisation.print_grid(grid, centre_x: 10, centre_y: 10, x_dim: 20, y_dim: 20, spacer: "\t")
  end
end
