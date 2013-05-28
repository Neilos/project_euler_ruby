require 'minitest/autorun'
require './calculate011'

class TestCalculate < MiniTest::Unit::TestCase

  def setup
    @grid1 = [[1,2,3],[4,5,6],[7,8,9]]
    # @grid2 = [[1,2,3],[4,5,6],[7,8,9]]
    @invalid_grid1 = [[1,2,3],[4,5,6],[7,8]]
    @invalid_grid2 = [[1,2,3],[4,5],[7,8,9]]
    @invalid_grid3 = [[1,2],[4,5,6],[7,8,9]]
  end

  def test_largest_product_in_a_grid
    actual = Calculate.largest_product_in_a_grid(3, @grid1)
    assert_equal [504, [7, 8, 9]], actual
  end

  def test_largest_product_in_a_grid_raises_exception_for_invalid_grids
    assert_raises(ArgumentError) { Calculate.largest_product_in_a_grid(3, @invalid_grid1) }
  end

  def test_valid_grid
    assert Calculate.valid_grid?(@grid1), "should be a valid_grid"
    refute Calculate.valid_grid?(@invalid_grid1), 'jagged grids are not valid'
    refute Calculate.valid_grid?(@invalid_grid2), 'jagged grids are not valid'
    refute Calculate.valid_grid?(@invalid_grid3), 'jagged grids are not valid'
  end

  def test_backslash_diagonal
    assert_equal [1,5,9], Calculate.backslash_diagonal(0, 0, 3, @grid1)
    assert_equal [5,9,nil], Calculate.backslash_diagonal(1, 1, 3, @grid1)
  end

  def test_forwardslash
    assert_equal [3,5,7], Calculate.forwardslash_diagonal(0, 2, 3, @grid1)
    assert_equal [5,7,nil], Calculate.forwardslash_diagonal(1, 1, 3, @grid1)
  end

  def test_horizontal
    assert_equal [1,2,3], Calculate.horizontal(0, 0, 3, @grid1)
    assert_equal [5,6,nil], Calculate.horizontal(1, 1, 3, @grid1)
  end

  def test_vertical
    assert_equal [1,4,7], Calculate.vertical(0, 0, 3, @grid1)
    assert_equal [5,8,nil], Calculate.vertical(1, 1, 3, @grid1)
  end

end