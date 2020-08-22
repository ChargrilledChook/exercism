module Raindrops
  def self.convert(num)
    res = ''
    res += 'Pling' if (num % 3).zero?
    res += 'Plang' if (num % 5).zero?
    res += 'Plong' if (num % 7).zero?
    res.empty? ? num.to_s : res
  end
end
