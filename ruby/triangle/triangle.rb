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
    if sides.any?(0) || triangle_inequality?
      false
    else
      true
    end
  end

  def triangle_inequality?
    if sides[0] > sides[1] + sides[2] || sides[1] > sides[0] + sides[2] || sides[2] > sides[0] + sides[1]
      true
    else
      false
    end
  end
end
