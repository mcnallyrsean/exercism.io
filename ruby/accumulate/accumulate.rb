class Array
  def accumulate
    returned_array = []
    each do |operation|
      returned_array << (yield operation)
    end
    returned_array 
  end
end