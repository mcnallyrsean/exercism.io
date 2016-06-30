class PhoneNumber
  def initialize(digits)
    @digits = digits
  end

  def number
    n = @digits.gsub(/\D/, "")
    if @digits.match(/[a-zA-Z]/) || n.length < 10 || n.length == 11 && n[0] != "1" || n.length >= 12
      "0000000000"
    elsif n.length == 11 
      n.slice(1..-1)
    else
      n
    end
  end

  def area_code
    number[0..2]
  end

  def to_s  
    number.insert(0, "(").insert(4, ") ").insert(9, "-")
  end
end