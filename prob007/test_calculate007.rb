require 'test/unit'
require './calculate007'

class TestCalculate < Test::Unit::TestCase

  def test_difference_between_sum_of_squares_and_square_of_sum
    result = Calculate.nth_prime(6)
    assert_equal 13, result
  end

end