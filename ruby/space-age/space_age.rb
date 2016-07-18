class SpaceAge
  attr_reader :seconds
  EarthSeconds = 31557600.0
  Planets = {
    'Earth' => EarthSeconds,
    'Mercury' => (EarthSeconds * 0.2408467),
    'Venus' => (EarthSeconds * 0.61519726),
    'Mars' => (EarthSeconds * 1.8808158),
    'Jupiter' => (EarthSeconds * 11.862615),
    'Saturn' => (EarthSeconds * 29.447498),
    'Uranus' => (EarthSeconds * 84.016846),
    'Neptune' => (EarthSeconds * 164.79132 )
  }
  def initialize(input)
    @seconds = input
  end
  def on_earth
    @seconds/EarthSeconds
  end
  def on_mercury
    @seconds/(Planets['Mercury'])
  end
  def on_venus
    @seconds/(Planets['Venus'])
  end
  def on_mars
    @seconds/(Planets['Mars'])
  end
  def on_jupiter
    @seconds/(Planets['Jupiter'])
  end
  def on_saturn
    @seconds/(Planets['Saturn'])
  end
  def on_uranus
    @seconds/(Planets['Uranus'])
  end
  def on_neptune
    @seconds/(Planets['Neptune'])
  end
end
