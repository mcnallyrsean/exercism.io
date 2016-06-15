module BookKeeping
  VERSION = 2
end
class Year
  def self.leap?(year)
    if (year % 400 == 0 && year % 100 == 0 || year % 4 == 0 && year % 100 != 0)
     "Expected 'true', #{year} is a leap year."
    end
  end
end