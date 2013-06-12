require 'minitest'
require './calculate014'
require 'minitest/autorun'
require 'minitest/spec'

describe Calculate do

  it "should return an array of collatz sequence lengths starting with numbers less than" do
    expected_result = [[0], 
    [1], 
    [2, 1], 
    [3, 10, 5, 16, 8, 4, 2, 1], 
    [4, 2, 1], 
    [5, 16, 8, 4, 2, 1], 
    [6, 3, 10, 5, 16, 8, 4, 2, 1], 
    [7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1], 
    [8, 4, 2, 1], 
    [9, 28, 14, 7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1], 
    [10, 5, 16, 8, 4, 2, 1], 
    [11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1], 
    [12, 6, 3, 10, 5, 16, 8, 4, 2, 1], 
    [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]]
    actual_result = Calculate.collatz_sequences_starting_under(13)
    actual_result.must_equal expected_result
  end

  it "should return the longest collatz sequence starting under a specified number" do
    expected_result = [9, 28, 14, 7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    actual_result = Calculate.longest_collatz_sequence_starting_under(13)
    actual_result.must_equal expected_result
  end

  it "should return the starting point of the longest collatz sequence under a specified number" do
    expected_result = 9
    actual_result = Calculate.start_of_longest_collatz_sequence_starting_number(13)
    actual_result.must_equal expected_result
  end
  
end
