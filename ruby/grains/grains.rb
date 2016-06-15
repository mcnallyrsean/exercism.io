class Grains
  
  def self.square(number)
    sq = 1
    grains = 1
    while sq < number
      grains *= 2
      sq += 1
    end
    grains
  end

  def self.total
    sq = 1
    grains = 1
    all = 0
    while sq <= 64
      all += grains
      grains *= 2
      sq += 1
    end
    all
  end

end