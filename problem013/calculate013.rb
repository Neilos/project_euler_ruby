class Calculate
  def self.sum(numbers)
    sum = numbers.inject do |sum, num|
      sum += num
    end
    sum = sum.to_s[0..9].to_i
  end
end
