class Grains
  def self.square(num)
    raise ArgumentError unless num.between?(1, 64)

    2**(num - 1)
  end

  def self.total(num = 64)
    return 1 if num == 1

    square(num) + total(num - 1)
  end
end
