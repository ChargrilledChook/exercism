class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(matches)
    matches.select { |match| match.downcase.chars.sort == @word.chars.sort && @word != match.downcase }
  end
end
