require_relative 'calculate015'

argument = ARGV[0].to_i || 2

puts <<TEXT
There are exactly #{Calculate.lattice_patterns(argument)}
routes to the bottom right corner 
from the top left corner of a #{argument} x #{argument} lattice
TEXT
