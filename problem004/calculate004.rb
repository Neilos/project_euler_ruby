# # ORIGINAL
# class Calculate

# def self.largest_palindrome_product_of_two_numbers_with_x_digits(x_digits)
#   if valid_argument?(x_digits)
#     x_digit_range = Range.new(10**(x_digits - 1), 10**x_digits - 1)
#     highest = 0
#     # specify a range based on the x_digits parameter
#     # loop down through all x-digit numbers
#     # ...and for each loop through all x_digits numbers again
#     x_digit_range.each do |x|
#       x_digit_range.each do |y; product_reversed, product_as_string|
#         product_as_string = (x * y).to_s
#         product_reversed = product_as_string.reverse
#         # puts "highest: #{(x * y)}" if ((x * y) > highest && (product_as_string == product_reversed))
#         highest = x * y > highest && (product_as_string == product_reversed) ? (x * y) : highest # test for palindrome and is it the highest so far
#       end
#     end
#   end
#   return highest
# end

# def self.valid_argument?(argument)
#   raise ArgumentError.new("Invalid argument: Must be either 2 or 3") unless (2..3).include?(argument)
#   true
# end

# end


# ALGORITHM DEVELOPED WITH EVGENY SHADCHNEV
# Generate palindromes on the fly (highest first)
# Test whether they have two x-digit factors
# Break when a common factor is found
class Calculate
  def

#