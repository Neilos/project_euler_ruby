class Calculate

# Section of pascals trianble
#         1
#       1   1
#     1   2   1
#   1   3   3   1
# 1   4   6   4   1
#   5   10  10  5
#     15  20  15
#       35  35
#         70

def self.lattice_patterns(n)
  # (2 * n)! / (n! **2)
  factorial(2 * n) / ((factorial(n))**2)
end

def self.factorial(k)
  (1..k).inject(&:*)
end

end