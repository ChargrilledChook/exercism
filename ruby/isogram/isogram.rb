module Isogram
  def self.isogram?(input)
    word = input.downcase.scan(/[[:lower:]]/)
    word.uniq.size == word.size
  end
end
