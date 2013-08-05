require_relative 'calculate017'

argument = ARGV[0]|| "1000"

puts <<TEXT
The number of letters in the word representations of all numbers from 1 to #{argument} are #{Calculate.total_number_letter_count(argument.to_i)}
TEXT