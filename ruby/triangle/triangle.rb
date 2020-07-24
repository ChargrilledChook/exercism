# Exercism
class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    sides.any?(0) ? false : sides.all?(sides.first)
  end

  def isosceles?

  end

end
