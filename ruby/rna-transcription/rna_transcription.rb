class Complement
  VERSION = 3
  def self.of_dna(strand)
    conversion_hash = {
      "G" => "C",
      "C" => "G",
      "T" => "A",
      "A" => "U"
    }
   new_strand = ""
   strand.each_char do |c|
    if conversion_hash[c] != nil
      new_strand << conversion_hash[c]
    else
      raise ArgumentError, "Please provide an appropriate nucleotide."
    end
   end
   new_strand
  end
end