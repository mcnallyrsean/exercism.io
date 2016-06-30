class Array
  def keep
    each_with_object([]) do |element, return_array|
      return_array << element if yield element
    end
  end

  def discard
    each_with_object([]) do |element, return_array|
      return_array << element unless yield element
    end
  end
end