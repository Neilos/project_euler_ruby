require_relative 'calculate016'

argument = ARGV[0].to_i || 1000

puts <<TEXT
The sum of the digits of 2 to the power of #{argument} 
is #{Calculate.sum_of_digits_of_2_to_the_power_of(argument)}
TEXT