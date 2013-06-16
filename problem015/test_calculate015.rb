require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require './calculate015'

describe Calculate do

  it "should calculate the lattic patterns for a 2x2 lattice" do
    Calculate.lattice_patterns(2).must_equal 6
  end

  it "should calculate the lattic patterns for a 3x3 lattice" do
    Calculate.lattice_patterns(3).must_equal 20
  end
  
  it "should calculate the lattic patterns for a 4x4 lattice" do
    Calculate.lattice_patterns(4).must_equal 70
  end

end
