module Isogram
  def self.isogram?(input)
    word = input.downcase.scan(/[a-z]/)
    word.uniq.size == word.size
  end
end
