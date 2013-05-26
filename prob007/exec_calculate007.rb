require './calculate007'

argument = ARGV.first || 10001

puts <<TEXT_OUTPUT
  The #{argument}#{
  case argument.to_s[-2,2]
  when "11" then "th"
  when "12" then "th"
  else
    case argument.to_s[-1]
    when "1" then "st"
    when "2" then "nd"
    when "3" then "rd"
    else "th"
    end
  end
  } prime is #{Calculate.nth_prime(argument.to_i)}
TEXT_OUTPUT
