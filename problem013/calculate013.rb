class Calculate
  def self.sum(numbers)
    numbers.inject do |sum, num|
      sum += num
    end
  end
end
