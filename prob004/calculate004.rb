class Calculate

def self.largest_palindrome_product_of_two_numbers_with_x_digits(x_digits)
  if valid_argument?(x_digits)
    highest = 0
    # specify a range based on the x_digits parameter
    # loop down through all x-digit numbers
    # ...and for each loop through all x_digits numbers again
    (10**x_digits - 1).downto(10**(x_digits - 1)) do |x|
      (10**x_digits - 1).downto(10**(x_digits - 1)) do |y|
        # multiply by every two digit number in turn
        # test for palindromic behaviour
        puts "highest: #{(x * y)}" if ((x * y) > highest && ((x * y).to_s == (x * y).to_s.reverse))
        highest = ((x * y) > highest && ((x * y).to_s == (x * y).to_s.reverse)) ? (x * y) : highest
      end
    end
  end
  return highest
end

def self.valid_argument?(argument)
  raise ArgumentError.new("Invalid argument: Must be either 2 or 3") unless (2..3).include?(argument)
  true
end


end
