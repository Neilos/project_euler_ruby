class Calculate
  def self.largest_product_in_series(series_length, n_digit_string)
    products_array = []
    n_digit_string.to_s.split('').each_cons(series_length) do |series|
      products_array << series.inject { |product, digit| product.to_i * digit.to_i }
    end
    products_array.max
  end
end