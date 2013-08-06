require 'rspec'
require './calculate018'

describe Triangle do
  describe "max_path_sum" do
    it "should return the sum of values on the maximum path" do
      triangle_array = [
        [3],
        [7, 4],
        [2, 4, 6],
        [8, 5, 9, 3]
      ]
      tri = Triangle.new(triangle_array)
      puts tri.calculate_max_path_sum
      tri.calculate_max_path_sum.should == 23
    end
  end
end

