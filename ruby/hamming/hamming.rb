class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError unless dna1.size == dna2.size

    dna1.each_char.zip(dna2.each_char).reject { |nuc1, nuc2| nuc1 == nuc2 }.count
  end
end
