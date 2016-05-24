class Raindrops

  VERSION = 1
  require 'prime'

  def self.convert(number)
    
    fact_array = Prime.prime_division(number).flat_map {|f, p| [f]*p}
    unique = fact_array.uniq
    rain = []
    discard = []

    rain_hash = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }

    if number == 1
      return number.to_s
    else
      unique.each do |u|
        if rain_hash[u] != nil
          rain << rain_hash[u] 
        else
          discard << number
        end
      end
    end

    rain == [] ? discard.uniq.join.to_s : rain.join

  end
end