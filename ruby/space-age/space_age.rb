class SpaceAge
  EARTH_YEAR = 31_557_600

  CONVERTER = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.freeze

  def initialize(seconds)
    @seconds = seconds.to_r / EARTH_YEAR
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

  private

  attr_reader :seconds
end
