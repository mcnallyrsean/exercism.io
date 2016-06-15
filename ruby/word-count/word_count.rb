module BookKeeping
  VERSION = 1
end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    p_array = @phrase.downcase.gsub(/[^\w\']+|\'(?!\w)|(?<!\w)\'/,' ')
    p_array.split.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end