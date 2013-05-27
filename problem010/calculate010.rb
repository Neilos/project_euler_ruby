class Calculate
  def self.sum_of_primes_below(n)
    # Sieve of Eratosthenes algorithm
    sum_of_primes = 0
    numbers_are_primes_array = Array.new(n + 2, true)
    (2..n).each do |prime_candidate| 
      if numbers_are_primes_array[prime_candidate]
        sum_of_primes += prime_candidate
        non_prime = prime_candidate
        while non_prime < n
          non_prime += prime_candidate
          numbers_are_primes_array[non_prime] = false
        end
      end
    end
    sum_of_primes
  end
end