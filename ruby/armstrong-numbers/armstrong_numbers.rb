class ArmstrongNumbers
  def self.include?(number)
    number.digits.reduce(0) { |memo, digit| memo + digit**number.digits.size } == number
  end
end
