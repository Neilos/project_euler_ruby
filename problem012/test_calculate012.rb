require 'minitest/autorun'
require './calculate012'

class TestCalculate < MiniTest::Unit::TestCase

  def test_first_triangle_number_with_over_n_divisors
    result = Calculate.first_triangle_number_with_over_n_divisors(5)
    assert_equal 28, result

    result = Calculate.first_triangle_number_with_over_n_divisors(3)
    assert_equal 6, result
  end

  def test_count_factors
    assert_equal 6, Calculate.count_factors(28)
  end

end