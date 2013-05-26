class Calculate
  def self.product_of_pythagorean_triplet_whose_sum_is(sum)
    (1..(sum / 2 - 1)).each do |b|
      (1..b).each do |a|
        c = sum - b - a
        # puts "a=#{a}, b=#{b}, c=#{c}, sum=#{a + b + c}, product=#{a * b * c}, a < b: #{a < b}, b < c: #{b < c}"
        return a * b * c if a**2 + b**2 == c**2 && c > b && b > a
      end
    end
  end
end