#!/usr/bin/env ruby
require './calculate003'

argument = ARGV.first || 600_851_475_143
puts "The largest prime factor of #{argument.to_i} is: #{Calculate.largest_prime_factor(argument.to_i)}"
