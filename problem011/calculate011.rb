class Calculate

  def self.largest_product_in_a_grid(sequence_length, grid)
    raise ArgumentError, "Invalid grid" unless valid_grid?(grid)
    products_array = []
    grid.each_with_index do |row, vertical_pos|
      grid[vertical_pos].each_index do |horizontal_pos|
        
        horizontal = horizontal(vertical_pos, horizontal_pos, sequence_length, grid)
        vertical = vertical(vertical_pos, horizontal_pos, sequence_length, grid)
        backslash_diagonal = backslash_diagonal(vertical_pos, horizontal_pos, sequence_length, grid)
        forwardslash_diagonal = forwardslash_diagonal(vertical_pos, horizontal_pos, sequence_length, grid)
        
        products_array << [horizontal.inject(&:*), horizontal] unless horizontal.include? nil
        products_array << [vertical.inject(&:*), vertical] unless vertical.include? nil
        products_array << [backslash_diagonal.inject(&:*), backslash_diagonal] unless backslash_diagonal.include? nil
        products_array << [forwardslash_diagonal.inject(&:*), forwardslash_diagonal] unless forwardslash_diagonal.include? nil
      end
    end
    products_array.max
  end

  def self.valid_grid?(grid)
    grid_width = grid[0].length
    grid_height = grid.length
    (1..(grid_height - 1)).all? do |row_index|
      puts row_index
      grid[row_index].length == grid_width
    end
  end

  def self.backslash_diagonal(vertical_pos, horizontal_pos, sequence_length, grid)
    grid_height = grid.length - 1
    grid_width = grid[0].length - 1
    (0..(sequence_length - 1)).map do |i|
      grid[vertical_pos + i][horizontal_pos + i].to_i unless vertical_pos + i > grid_height || horizontal_pos + i > grid_width
    end
  end

  def self.forwardslash_diagonal(vertical_pos, horizontal_pos, sequence_length, grid)
    grid_height = grid.length - 1
    (0..(sequence_length - 1)).map do |i|
      grid[vertical_pos + i][horizontal_pos - i].to_i unless vertical_pos + i > grid_height || horizontal_pos - i < 0
    end
  end

  def self.horizontal(vertical_pos, horizontal_pos, sequence_length, grid)
    grid_width = grid[0].length - 1
    (0..(sequence_length - 1)).map do |i|
      grid[vertical_pos][horizontal_pos + i].to_i unless horizontal_pos + i > grid_width
    end
  end

  def self.vertical(vertical_pos, horizontal_pos, sequence_length, grid)
    grid_height = grid.length - 1
    (0..(sequence_length - 1)).map do |i|
      grid[vertical_pos + i][horizontal_pos].to_i unless vertical_pos + i > grid_height
    end

  end

end
