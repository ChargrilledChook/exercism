class Complement
  CONVERTER = { 'C': 'G', 'G': 'C', 'T': 'A', 'A': 'U' }.freeze

  def self.of_dna(string)
    string.chars.map { |letter| CONVERTER[letter.to_sym] }.join('')
  end
end
