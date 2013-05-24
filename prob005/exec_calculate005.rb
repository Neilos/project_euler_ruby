require './calculate005'

argument = ARGV.first.to_i || 20

puts <<TEXT_OUTPUT
The smallest number that can be divided without remainder
by the numbers from 1 to #{argument} is: 
#{Calculate.smallest_multiple_of_numbers_below(argument)}
TEXT_OUTPUT
