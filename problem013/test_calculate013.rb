require 'minitest/spec'
require 'minitest/autorun'
require './calculate013'

describe Calculate do
  
  it "should sum an array of numbers" do
    array = [1111111111,1111111111,1111111111,1111111111,1111111111]
    Calculate.sum(array).must_equal 5555555555
  end

end