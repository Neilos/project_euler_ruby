#!/usr/bin/ruby
require './calculate001'
argument = ARGV.first || 1000
puts "The sum of multiples of 3 and 5 below #{argument.to_i} is: #{Calculate.sum_of_multiples_of_3_and_5_below(argument)}"
