require 'rspec'
require './calculate019'
require 'date'

describe Calculate do
  describe "sundays" do
    it "should count the number of sundays in a date range" do
      period_start = Date.new(2013, 1, 1)
      period_end = Date.new(2013, 1, 14)
      sundays = [Date.new(2013,1,6), Date.new(2013,1,13)]
      Calculate.sundays(period_start..period_end).should == sundays
    end
  end

  describe "filter_by_day_of_month" do
    it "should filter the array of dates by the given day of month" do
      period_start = Date.new(2013, 1, 1)
      period_end = Date.new(2013, 3, 1)
      Calculate.filter_by_day_of_month(period_start..period_end, 1).count.should == 3
    end
  end

  it "should be possible to calculate the number of sundays that fall on the 1st of the month within a particular date range" do
    period_start = Date.new(2013, 6, 1)
    period_end = Date.new(2013, 9, 1)
    Calculate.filter_by_day_of_month(Calculate.sundays(period_start..period_end), 1).count.should == 1
  end
  
end
