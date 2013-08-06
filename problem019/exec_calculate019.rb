require_relative 'calculate019'
require 'date'

period_start = Date.new(1901,1,1)
period_end = Date.new(2000,12,31)

puts <<TEXT
The number of sundays that fall on the first of the month in the period from #{period_start.strftime('%Y-%m-%d')} until #{period_end.strftime('%Y-%m-%d')} is #{Calculate.filter_by_day_of_month(Calculate.sundays(period_start..period_end), 1).count} 

TEXT