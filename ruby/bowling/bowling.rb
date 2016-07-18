class Game
  attr_accessor :initial_scores
  def initialize
    @initial_scores = []
  end
  def roll(number)
    initial_scores << number
  end
  def score_strikes
    initial_scores.each_with_index.map {|roll, index| roll == 10 ? 10 + initial_scores[index+1] + initial_scores[index+2] : roll}
  end
  def score_spares
    score_strikes.each_with_index.map do |roll, index|
      if index.even? && roll != 10 && (roll + score_strikes[index + 1] == 10) 
        roll = 45
      else
        roll
      end
    end
  end
  def fix_score
    score_strikes
    score_spares
  end
  def score
    fix_score.inject(:+)
  end
end