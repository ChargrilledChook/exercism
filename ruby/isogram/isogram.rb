module Isogram
  def self.isogram?(input)
    word = input.downcase.delete(' -')
    word.chars.uniq.size == word.chars.size
  end
end
