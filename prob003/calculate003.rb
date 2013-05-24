class Calculate

  def self.largest_prime_factor(n)
    return 1 if n ==1
    prime_factors = []
    divisor = 2
    while (n >= 1)

      while n % divisor == 0
        prime_factors << divisor if !prime_factors.include? divisor
        # smallest factor will necessarily be prime, 
        # rest of algorithm (i.e. use of n and incrementing divisor) ensures that

        n = n / divisor     # Divide out all the divisors
        puts "divisor: #{divisor}"
      end
      # next factor found will also prime
      # because it cannot be a multiple of any
      # previous primes because of the division loop above
      # and larger than the previous

      divisor = divisor + 1     # increment divisor  
      break if divisor > n
    end

    puts "prime_factors: #{prime_factors}"
    prime_factors[-1] if prime_factors.length > 0
  end

end