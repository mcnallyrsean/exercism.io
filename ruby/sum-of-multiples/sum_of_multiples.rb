class SumOfMultiples
  def initialize(*num_array)
    @num_array = num_array
  end

  def to(this_number)
    num_array =[]
    num = 0
    while num < this_number
      @num_array.each do |n|
        if num % n == 0
          num_array << num
        end
      end
      num += 1
    end
    num_array.uniq.inject(:+)
  end
end