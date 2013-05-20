require 'test/unit'
require './calculate001'

class TestCalc < Test::Unit::TestCase
  def test_sum_of_multiples_of_3_and_5_below_10
    result = Calculate.sum_of_multiples_of_3_and_5_below(10)
    assert_equal 23, result
  end
end