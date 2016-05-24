class Hamming  
  VERSION = 2
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError, "Please provide strands of equal length"
    else
      s1 = strand1.chars
      s2 = strand2.chars
      comparison_array = s1.zip(s2).map {|x, y| x == y}
      comparison_array.count(false)
    end
  end
end