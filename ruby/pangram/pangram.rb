class Pangram
  VERSION = 1
  def self.is_pangram?(sentence)
    alphabet = ("a".."z").to_a
    hash = {}
    alphabet.each { |a| hash[a] = 0 }
    if sentence == ""
      false
    else
      squeezed = sentence.downcase.gsub(/\W+/, '')
      squeezed.each_char { |c| hash[c] += 1 }
      hash.has_value?(0) ? false : true
    end
  end
end