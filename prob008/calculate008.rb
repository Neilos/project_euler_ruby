class Calculate
  def self.largest_product_in_series(series_length, n_digit_string)
    n_digit_string = n_digit_string.to_s
    number_of_series = n_digit_string.length - series_length
    products_array = (0..number_of_series).map do |i|
      n_digit_string[i, series_length].split('').inject do |product, digit|
        product.to_i * digit.to_i
      end
    end
    products_array.max
  end
end