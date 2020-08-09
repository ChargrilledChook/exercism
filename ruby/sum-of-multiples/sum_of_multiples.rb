class SumOfMultiples
  attr_reader :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def to(num)
    (1...num).reduce(0) do |res, elt|
      if (elt % a).zero? || (elt % b).zero?
        res + elt
      else
        res
      end
    end
  end
end
