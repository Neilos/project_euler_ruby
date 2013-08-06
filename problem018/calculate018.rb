class Triangle
  def initialize(triangle_array)
    @triangle_top = Position.new(0, 0, triangle_array)
  end

  def calculate_max_path_sum
    @triangle_top.max_path_sum
  end
end


class NilClass
  def max_path_sum
    0
  end
end


class Position
  attr_accessor :max_path_sum
  attr_reader :value, :route1, :route2
  
  def initialize(row, column, triangle)
    @value = triangle[row][column]
    if triangle[row + 1]
      @route1 = Position.new(row + 1, column, triangle) if triangle[row + 1][column]
      @route2 = Position.new(row + 1, column + 1, triangle) if triangle[row + 1][column + 1]
    end
  end

  def max_path_sum
    value + [route1.max_path_sum, route2.max_path_sum].max
  end
end
