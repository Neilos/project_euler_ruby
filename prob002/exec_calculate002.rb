#!/usr/bin/env ruby
require './calculate002'

argument = ARGV.first || 4_000_000
puts " The sum of even fibanacci numbers less than or equal to #{argument.to_i} is: #{Calculate.sum_of_even_fibanacci_numbers_not_exceeding(argument.to_i)}"
