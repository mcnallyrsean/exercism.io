module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman
    roman_hash = {
      1000 => "M",  
      900 => "CM",  
      500 => "D",  
      400 => "CD",
      100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
      9 => "IX",  
      5 => "V",  
      4 => "IV",  
      1 => "I",  
    }

    roman_numeral = ""
    convert_me = self
    roman_hash.each_pair do |arabic, roman|
      while convert_me >= arabic
        convert_me -= arabic
        roman_numeral << roman
      end
    end
    roman_numeral
  end
end