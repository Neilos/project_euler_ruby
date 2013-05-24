require './calculate004'

argument = ARGV.first || 3

puts <<PARAGRAPH
  The largest palindrome
  product of two numbers
  with #{argument.to_i} digits is: 
  #{Calculate.largest_palindrome_product_of_two_numbers_with_x_digits(argument.to_i)}
PARAGRAPH
  
