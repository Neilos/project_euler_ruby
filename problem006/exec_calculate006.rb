require './calculate006'

argument = ARGV.first || 100

puts <<TEXT_OUTPUT
The difference between the sum of squares of the numbers up to #{argument}
and thesquare of the sum of the natural numbers up to #{argument} is: 
#{Calculate.difference_between_sum_of_squares_and_square_of_sum(argument)}
TEXT_OUTPUT
