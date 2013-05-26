require 'test/unit'
require './calculate005'

class TestCalculate < Test::Unit::TestCase

  def test_smallest_multiple_of_numbers_below
    result = Calculate.smallest_multiple_of_numbers_below(10)
    assert_equal 2520, result
  end

end