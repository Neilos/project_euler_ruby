require 'test/unit'
require './calculate003'

class TestCalc < Test::Unit::TestCase
  def test_largest_prime_factor
    result = Calculate.largest_prime_factor(13195)
    assert_equal 29, result
  end
end
