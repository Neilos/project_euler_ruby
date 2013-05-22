require './calculate004'

argument = ARGV.first.to_i || 3

puts <<PARAGRAPH
  The largest palindrome
  product of two numbers
  with #{argument} digits is: 
  #{Calculate.largest_palindrome_product_of_two_numbers_with_x_digits(argument)}
PARAGRAPH
  
