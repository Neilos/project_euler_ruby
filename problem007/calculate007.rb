class Calculate
  def self.nth_prime(n)
    primes_array = [2]
    candidate = 3
    while primes_array.length < n
      primes_array << candidate unless primes_array.any? { |prime| candidate % prime == 0 }
      candidate += 2
    end
    primes_array[-1]
  end
end
