module BookKeeping
  VERSION = 2
end
class BeerSong
  def verse(number_of_beers)
    if number_of_beers == 2
      "#{number_of_beers} bottles of beer on the wall, #{number_of_beers} bottles of beer.\nTake one down and pass it around, #{number_of_beers - 1} bottle of beer on the wall.\n"
    elsif number_of_beers == 1
      "#{number_of_beers} bottle of beer on the wall, #{number_of_beers} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    elsif number_of_beers == 0
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    else 
     "#{number_of_beers} bottles of beer on the wall, #{number_of_beers} bottles of beer.\nTake one down and pass it around, #{number_of_beers - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(high, low)
    beer_array = Array(low..high).reverse
    bob = beer_array.map {|v| verse(v)}
    bob.join("\n")
  end

  def lyrics
    verses(99,0)
  end
end