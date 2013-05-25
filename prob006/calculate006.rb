class Calculate
  def self.difference_between_sum_of_squares_and_square_of_sum(n)
    squared_sum = ((1..n).inject(&:+))**2
    sum_of_squares = (1..n).inject { |sum, num| sum + num**2 }
    squared_sum - sum_of_squares
  end
end