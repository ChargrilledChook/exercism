# Exercism
class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    valid_triangle? ? sides.all?(sides.first) : false
  end

  def isosceles?
    valid_triangle? ? sides.uniq.length <= 2 : false
  end

  def scalene?
    valid_triangle? ? sides.uniq.length == 3 : false
  end

  private

  def valid_triangle?
    if sides.any?(0) || invalid_sides?
      false
    else
      true
    end
  end

  def invalid_sides?
    sides.max > sides.min(2).sum
  end
end

