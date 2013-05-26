require 'test/unit'
require './calculate008'

class TestCalculate < Test::Unit::TestCase

  def test_difference_between_sum_of_squares_and_square_of_sum
    result = Calculate.largest_product_in_series(3, 243987456)
    assert_equal 504, result
  end

end