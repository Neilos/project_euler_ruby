require 'prime'

class Calculate

  def self.first_triangle_number_with_over_n_divisors(n)
    triangle_numbers = Enumerator.new do |t|
      a = 1
      while true do
        t.yield (1..a).inject(&:+)
        a += 1
      end
    end

    max_factors = {:triangle_number => 1, :factors => 1}
    while max_factors[:factors] <= n
      triangle_number = triangle_numbers.next
      factor_count = count_factors(triangle_number) 
      if factor_count > max_factors[:factors]
        max_factors[:factors] = factor_count
        max_factors[:triangle_number] = triangle_number
      end
    end

    return max_factors[:triangle_number]
  end


  # if a numbers prime factorization is [[a,x][b,y]]
  # where a and b are the primes and x and y are the powers
  # then the number of factors is x * y 
  def self.count_factors(x)
    count = 1
    prime_factorization = Prime.prime_division(x)
    prime_factorization.each do |prime, power|
      count = (power + 1) * count
    end
    count
  end
end