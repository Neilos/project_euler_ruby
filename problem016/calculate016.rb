class Calculate

def self.sum_of_digits_of_2_to_the_power_of(n)
  digits = (2**n).to_s.scan(/./).map(&:to_i)
  digits.inject(&:+)
end

end