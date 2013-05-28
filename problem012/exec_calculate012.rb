require './calculate012'


argument = ARGV[0] || 500


puts <<TEXT_OUTPUT
The first triangle number to have over #{argument} divisors is:
#{Calculate.first_triangle_number_with_over_n_divisors(argument.to_i) }
TEXT_OUTPUT
