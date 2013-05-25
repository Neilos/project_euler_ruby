require 'test/unit'
require './calculate006'

class TestCalculate < Test::Unit::TestCase

  def test_difference_between_sum_of_squares_and_square_of_sum
    result = Calculate.difference_between_sum_of_squares_and_square_of_sum(10)
    assert_equal 2640, result
  end

end