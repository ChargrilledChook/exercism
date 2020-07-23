module Acronym
  def self.abbreviate(string)
    string.scan(/\w+/).reduce('') { |result, word| result + word[0].upcase }
  end
end
