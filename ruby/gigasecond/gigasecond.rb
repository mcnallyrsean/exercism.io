class Gigasecond
  VERSION = 1
  def self.from(date)
    t = date.to_i
    t_giga = t + (10 ** 9)
    gigaversary = Time.at(t_giga).utc
  end
end