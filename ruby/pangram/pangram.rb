class Pangram
  def self.pangram?(string)
    ('a'..'z').to_a.join == string.delete(' _0-9"\'').chars.sort.uniq.join.downcase
  end
end
