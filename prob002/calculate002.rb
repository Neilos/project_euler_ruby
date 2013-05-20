class Calculate
  def self.sum_of_even_fibanacci_numbers_not_exceeding(n)
    previous_value, value, sum = 1, 1, 0
    while value <= n
      sum += value if value % 2 ==0
      previous_value, value = value, value + previous_value
    end
    sum
  end
end