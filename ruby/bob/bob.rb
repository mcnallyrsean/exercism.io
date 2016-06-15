class Bob
  def hey(remark)
    if remark == remark.upcase && remark.gsub(/[^a-zA-Z]/, "").length > 0
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