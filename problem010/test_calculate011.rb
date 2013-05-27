require 'test/unit'
require './calculate010'

class TestCalculate < Test::Unit::TestCase

  def test_sum_of_primes_below_n
    result = Calculate.sum_of_primes_below(10)
    assert_equal 17, result
  end

end