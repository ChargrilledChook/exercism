module Isogram
  def self.isogram?(input)
    word = input.downcase.delete(' -')
    word.chars.uniq == word.chars
  end
end
