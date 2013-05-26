require './calculate009'


argument = ARGV[0] || 1000


puts <<TEXT_OUTPUT
The products of the pythagorean triplets which sum to #{argument} are:
#{Calculate.product_of_pythagorean_triplet_whose_sum_is(argument.to_i)}
TEXT_OUTPUT
