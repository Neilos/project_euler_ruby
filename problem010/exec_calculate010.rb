require './calculate010'


argument = ARGV[0] || 2_000_000


puts <<TEXT_OUTPUT
The sum of the primes below #{argument} is:
#{Calculate.sum_of_primes_below(argument.to_i)}
TEXT_OUTPUT
