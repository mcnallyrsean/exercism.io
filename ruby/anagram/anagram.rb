class Anagram
  def initialize(word)
    @initial_word = word.downcase
    @sorted_word = @initial_word.chars.sort_by(&:downcase).join.downcase
  end

  def match(input_array)
    input_array.select {|el| el.chars.sort_by(&:downcase).join.downcase == @sorted_word && el.downcase != @initial_word}
  end
end
