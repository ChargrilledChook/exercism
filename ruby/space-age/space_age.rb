class SpaceAge
  EARTH_YEAR = 31_557_600

  CONVERTER = {
    earth: EARTH_YEAR,
    mercury: EARTH_YEAR * 0.2408467,
    venus: EARTH_YEAR * 0.61519726,
    mars: EARTH_YEAR * 1.8808158,
    jupiter: EARTH_YEAR * 11.862615,
    saturn: EARTH_YEAR * 29.447498,
    uranus: EARTH_YEAR * 84.016846,
    neptune: EARTH_YEAR * 164.79132
  }.freeze

  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
    seconds / CONVERTER[:earth]
  end

  def on_mercury
    seconds / CONVERTER[:mercury]
  end

  def on_venus
    seconds / CONVERTER[:venus]
  end

  def on_mars
    seconds / CONVERTER[:mars]
  end

  def on_jupiter
    seconds / CONVERTER[:jupiter]
  end

  def on_saturn
    seconds / CONVERTER[:saturn]
  end

  def on_uranus
    seconds / CONVERTER[:uranus]
  end

  def on_neptune
    seconds / CONVERTER[:neptune]
  end
end
