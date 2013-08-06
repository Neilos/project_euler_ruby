class Calculate

def self.sundays(period)
  period.select { |date| date.wday == 0 }
end

def self.filter_by_day_of_month(period, day_of_month)
  period.select { |date| date.mday == day_of_month }
end

end