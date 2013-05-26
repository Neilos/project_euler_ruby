require 'prime'

class Calculate

  def self.smallest_multiple_of_numbers_below(n)
    mutliple_all_nums_below_n = (1..n).inject(&:*)
    the_primer = Prime.instance
    primes_less_than_n = the_primer.prime_division(mutliple_all_nums_below_n)
    multiples = primes_less_than_n.inject([]) do | multiples, prime_and_power |
      prime = prime_and_power.first
      i = 1
      i += 1 until prime**i > n
      multiples << [prime, i - 1]
    end
    return the_primer.int_from_prime_division(multiples)
  end

end
