class Isogram
  def self.isogram?(input)
    word = input.downcase
    word.chars.uniq == word.chars
  end
end

# All tests passing except for spaces and hyphens
