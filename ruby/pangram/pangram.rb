class Pangram
  def self.pangram?(string)
    ('a'..'z').to_a.join == string.delete(' ').chars.sort.uniq.join.downcase
  end
end
