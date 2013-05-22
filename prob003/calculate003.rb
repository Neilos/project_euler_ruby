require 'prime'

class Calculate
  
  def self.largest_prime_factor(n)
    
    (n/2).to_i.downto(1) do |i|
      if n % i ==0
        if Prime.prime?(i)
          return i 
        end
      end
    end

  end
  
  def self.is_prime?(x)
    Math.sqrt(x).to_i.downto(2).all? do |divisor|
      x % divisor != 0 
    end
  end

end

