class Calculate

  def self.largest_prime_factor(n)
    return 1 if n ==1
    prime_factors = []
    divisor = 2
    cap = n
    while cap > 1
      if n % divisor == 0
        prime_factors << divisor  # smallest factor will necessarily be prime, 
                                  # rest of algorithm (i.e. use of cap and incrementing divisor) ensures that 
                                  # next factor is also prime and larger than the previous

        cap = cap / divisor     # 'cap / divisor' could also be prime 
                                # but there cannot be primes higher than this
                                # because there is only one 'prime signature'
                                # for any one number and if 'cap / divisor'
                                # is prime then there would only two prime factors.
      end
      divisor = divisor + 1     # increment divisor  
    end

    puts "prime_factors: #{prime_factors}"
    prime_factors[-1] if prime_factors.length > 0
  end

end