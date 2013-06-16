require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require './calculate016'

describe Calculate do

  it "should calculate the sum of the digits of 2 to the power 15" do
    Calculate.sum_of_digits_of_2_to_the_power_of(15).must_equal 26
  end
  
end
