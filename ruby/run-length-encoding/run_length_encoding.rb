module BookKeeping
  VERSION = 2
end

class RunLengthEncoding
  def self.encode(input)
    output = input.each_char.chunk(&:itself).map do |k, v| 
      v.length > 1 ? [v.length, k] : [k]
    end
    output.join
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) {$2 * $1.to_i}
  end
end

