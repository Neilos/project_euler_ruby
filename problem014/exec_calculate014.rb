require_relative 'calculate014'

argument = ARGV[0].to_i || 1_000_000

puts <<TEXT
The starting number, under #{argument}, that produces the longest Collatz chain is:
#{Calculate.start_of_longest_collatz_sequence_starting_number(argument)}
TEXT