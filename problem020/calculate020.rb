class Calculate

  def self.sum_of_digits(number)
    number.to_s.split('').inject(0) do |sum, digit|
      sum + digit.to_i
    end
  end

  def self.factorial(n)
    return 1 if n ==0
    (1..n).inject(:*)
  end

end