module Isogram
  def self.isogram?(input)
    word = input.downcase.scan(/\w+/).join
    word.chars.uniq.size == word.chars.size
  end
end
