class Calculate
def self.sum_of_multiples_of_3_and_5_below(n)
  sum =0
  (1...n).each { |int| sum += int if int % 3 ==0 || int % 5 ==0 }
  sum
end
end