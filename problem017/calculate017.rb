class Calculate
  THOUSAND = ["", "onethousand"]
  HUNDRED = ["", "onehundred", "twohundred", "threehundred", "fourhundred", "fivehundred", "sixhundred", "sevenhundred", "eighthundred", "ninehundred"]
  TENS = ["","","twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  TEENS_ = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  UNITS = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  

def self.total_number_letter_count(upto)
  (1..upto).inject(0) do |total, num|
    total + number_letter_count(num)
  end
end


def self.number_letter_count(number)
  wordify(number).length
end


def self.wordify(number)
  digits = number.to_s.split('')
  units_digit = digits.pop.to_i || 0
  tens_digit = digits.pop.to_i || 0
    units = tens_digit == 1 ? TEENS_[units_digit] : UNITS[units_digit]
    tens = tens_digit == 1 ? "" : TENS[tens_digit]
  hundreds = HUNDRED[digits.pop.to_i || 0]
  thousands = THOUSAND[digits.pop.to_i || 0]
  and_operator = (thousands + hundreds).length > 1 && (tens + units).length > 1 ? "and" : ""
  thousands + hundreds + and_operator + tens + units
end

end