require_relative 'calculate020'

argument = ARGV[0].to_i || 100

puts <<TEXT
The sum of the digits of #{argument}! is: #{Calculate.sum_of_digits(Calculate.factorial(argument))}

TEXT