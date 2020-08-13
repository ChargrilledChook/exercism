class Grains
  def self.square(num)
    raise ArgumentError unless num.positive? && num <= 64

    (1..num).reduce { |memo, _num| memo * 2 }
  end

  def self.total(num = 64)
    return 1 if num == 1

    square(num) + total(num - 1)
  end
end
