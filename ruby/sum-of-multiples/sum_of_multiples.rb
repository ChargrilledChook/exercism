class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(total)
    return 0 if multiples.include?(0)

    (0...total).reduce(0) do |sum, num|
      sum += num if multiples.any? { |multiple| (num % multiple).zero? }
      sum
    end
  end

  private

  attr_reader :multiples
end
