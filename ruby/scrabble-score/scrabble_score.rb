class Scrabble
  LETTER_SCORES = {
    'a' => 1,
    'b' => 3,
    'c' => 3,
    'd' => 2,
    'e' => 1,
    'f' => 4,
    'g' => 2,
    'h' => 4,
    'i' => 1,
    'j' => 6,
    'k' => 5,
    'l' => 1,
    'm' => 3,
    'n' => 1,
    'o' => 1,
    'p' => 3,
    'q' => 10,
    'r' => 1,
    's' => 1,
    't' => 1,
    'u' => 1,
    'v' => 4,
    'w' => 4,
    'x' => 8,
    'y' => 4,
    'z' => 10
  }.freeze

  def self.score(input)
    input.each_char.reduce(0) { |res, char| res + LETTER_SCORES.fetch(char, 0) }
  end

  def initialize(input)
    @input = clean_input(input)
  end

  def score
    input.each_char.reduce(0) { |res, char| res + LETTER_SCORES.fetch(char, 0) }
  end

  private

  attr_reader :input

  def clean_input(input)
    return '' unless input

    input.downcase
  end
end
