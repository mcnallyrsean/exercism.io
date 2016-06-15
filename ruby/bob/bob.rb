class Bob
  def hey(remark)
    if remark == remark.upcase && remark != remark.downcase
      "Whoa, chill out!"
    elsif remark[-1, 1] == "?"
      "Sure."
    elsif remark.strip.empty? 
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end