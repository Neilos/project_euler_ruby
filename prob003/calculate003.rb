require 'prime'

class Calculate
  def self.largest_prime_factor(n)
    n.downto(1) do |i|
      if n % i ==0
        if Prime.prime?(i)
          return i 
        end
      end
    end
  end
end

