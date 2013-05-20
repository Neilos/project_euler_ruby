require 'test/unit'
require './calculate002'
class TestCalc < Test::Unit::TestCase
  def test_sum_of_even_fibanacci_numbers_not_exceeding_90
    result = Calculate.sum_of_even_fibanacci_numbers_not_exceeding(90)
    assert_equal 44, result
  end
end