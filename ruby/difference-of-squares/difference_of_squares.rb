class Squares
  VERSION = 2
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    i = 0
    sum = 0
    while i < @number
      i += 1
      sum += i
    end
    sum = sum ** 2
  end

  def sum_of_squares
    i = 0
    product = 0
    while i < @number
      i += 1
      product += i**2
    end
    product
  end

  def difference
    @number == 0 ? 0 : (square_of_sum) - (sum_of_squares)
  end
end