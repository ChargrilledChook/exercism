class Phrase
  PATTERN = /\b[\w']+\b/.freeze

  def initialize(words)
    @words = words
  end

  def word_count
    @words.downcase.scan(PATTERN).each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end
end
