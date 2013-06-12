class Calculate

def self.start_of_longest_collatz_sequence_starting_number(n)
  longest_collatz_sequence_starting_under(n).first
end

def self.longest_collatz_sequence_starting_under(n)
  collatz_sequences_starting_under(n).inject{|biggest_array, array| array.length > biggest_array.length ? array : biggest_array}
end

def self.collatz_sequences_starting_under(n)
  (0..n).map { |n| collatz_sequence_array_for(n) }
end

def self.collatz_sequence_array_for(k)
  array = []
  n, i = k, 1
  array << n
  while n > 1
    n = (n % 2==0) ? (n / 2) : (3 * n + 1)
    array << n
  end
  array
end

end