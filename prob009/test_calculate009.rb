require 'test/unit'
require './calculate009'

class TestCalculate < Test::Unit::TestCase

  def test_product_of_pythagorean_triplet_whose_sum_is
    result = Calculate.product_of_pythagorean_triplet_whose_sum_is(12)
    assert_equal 3 * 4 * 5, result
  end

end