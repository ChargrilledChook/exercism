module Year
  def self.leap?(year)
    if (year % 400).zero?
      true
    elsif (year % 4).zero? && (year % 100).positive?
      true
    else
      false
    end
  end
end
